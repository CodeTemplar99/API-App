// ignore_for_file: file_names, prefer_const_constructors

import 'package:corefans_test/core/api/controller.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';

class DeliveryForm extends StatefulWidget {
  const DeliveryForm({Key? key}) : super(key: key);

  @override
  _DeliveryFormState createState() => _DeliveryFormState();
}

class _DeliveryFormState extends State<DeliveryForm> {
  String? selectedValue;

  UpdateController c = Get.find();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: c.country,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      hintText: 'Nigeria',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border:
                            Border.all(width: 0.3, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Select City',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: c.possiblePlaces
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: c.state.value,
                        onChanged: (value) {
                          c.state.value = value as String;
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 120,
                  child: TextFormField(
                    controller: c.amount,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Text(
                          '₦',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      hintText: '2,000',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: c.isUpdating.value
                    ? null
                    : () async {
                        if (c.selected.value == null) {
                          await c.createPlace();
                        } else {
                          await c.updatePlace();
                        }
                        Navigator.pop(context);
                        c.fetchPlaces();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "${c.selected.value == null ? 'Created' : 'Updated'} successfully ✅"),
                          duration: Duration(milliseconds: 1000),
                        ));
                      },
                child: Text(
                  c.isUpdating.value
                      ? c.selected.value == null
                          ? 'Creating'
                          : 'Updating'
                      : 'Proceed',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
