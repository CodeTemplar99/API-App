import 'package:corefans_test/core/models/location.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UpdateController extends GetxController {
  Rx<Place?> selected = Rx<Place?>(null);
  RxList<Place> places = RxList<Place>();
  RxBool isLoading = false.obs;
  RxBool isUpdating = false.obs;
  TextEditingController country = TextEditingController();
  TextEditingController amount = TextEditingController();
  Rx<String?> state = Rx<String?>(null);

  List<String> possiblePlaces = [
    'Abuja',
    'Lagos',
    'Owerri',
    'Aba',
    'Ota',
    'Uyo',
  ];

  void selectPlace(Place place) {
    selected.value = place;
    country.text = place.country;
    amount.text = place.amount.toString();
    state.value = place.state;
  }

  void reset(Place place) {
    selected.value = null;
    country.clear();
    amount.clear();
    state.value = place.state;
  }

  Future<Place> createPlace() async {
    isUpdating.value = true;
    Place place = Place(
      amount: double.tryParse(amount.text),
      country: country.text,
      state: state.value ?? 'unknown state',
      id: null,
    );

    final response = await http.post(
        Uri.parse('https://corefans.co/api/location/'),
        body: place.toJson());

    if (response.statusCode == 200) {
      Map res = convert.jsonDecode(response.body);
      Place place = Place.fromJson(res['data']);

      isUpdating.value = false;
      return place;
    } else {
      isUpdating.value = false;
      throw Exception('failed to get places');
    }
  }

  Future<Place> updatePlace() async {
    isUpdating.value = true;
    Place place = selected.value!;
    place.country = country.text;
    place.state = state.value ?? place.state;
    place.amount = double.tryParse(amount.text);
    final response = await http.patch(
        Uri.parse('https://corefans.co/api/location/${place.id}/update'),
        body: place.toJson());

    if (response.statusCode == 200) {
      Map res = convert.jsonDecode(response.body);
      Place place = Place.fromJson(res['data']);

      isUpdating.value = false;
      return place;
    } else {
      isUpdating.value = false;
      throw Exception('failed to get places');
    }
  }

  void fetchPlaces() async {
    isLoading.value = true;
    final response = await http.get(
      Uri.parse('https://corefans.co/api/location'),
    );

    if (response.statusCode == 200) {
      Map res = convert.jsonDecode(response.body);
      List<Place> placesList = List<Place>.from(
          res['data'].map((place) => Place.fromJson(place)).toList());
      places.value = placesList;
    } else {
      throw Exception('failed to get places');
    }
    isLoading.value = false;
  }
}
