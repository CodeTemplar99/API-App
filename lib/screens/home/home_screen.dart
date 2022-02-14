// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:corefans_test/core/api/controller.dart';
import 'package:corefans_test/core/models/location.dart';
import 'package:corefans_test/screens/home/components/app_bar.dart';
import 'package:corefans_test/screens/home/components/drop_location.dart';
import 'package:corefans_test/screens/home/components/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UpdateController c = Get.put(UpdateController());
  @override
  void initState() {
    c.fetchPlaces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: buildAppbar(),
        body: c.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView(
                padding: EdgeInsets.symmetric(horizontal: 18),
                children: [
                  for (Place place in c.places)
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 0.6, color: Colors.grey.shade500),
                        ),
                      ),
                      height: 70,
                      child: GestureDetector(
                        onTap: () {
                          c.selectPlace(place);
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return buildDropLocation(context);
                            },
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${place.state}, ${place.country}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    '\$${place.amount?.toStringAsFixed(0)}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                ),
                                ClipOval(
                                  child: Container(
                                    color: Colors.red,
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}
