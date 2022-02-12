// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildAppbar() {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Icon(
      Icons.arrow_back_ios_rounded,
      color: Colors.black,
    ),
    title: Text(
      'Delivery Location & Fee',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
