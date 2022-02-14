// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:corefans_test/screens/home/components/deliveryForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SizedBox buildDropLocation(context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    height: size.height / 1.5,
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Text(
                  'Delivery Locations & Fee',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: DeliveryForm(),
          )
        ],
      ),
    ),
  );
}
