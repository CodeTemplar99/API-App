// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:corefans_test/core/api/controller.dart';
import 'package:corefans_test/screens/home/components/drop_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({
    Key? key,
  }) : super(key: key);

  UpdateController c = Get.find();

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return FloatingActionButton(
      onPressed: () {
        c.reset;
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return buildDropLocation(context);
          },
        );
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
