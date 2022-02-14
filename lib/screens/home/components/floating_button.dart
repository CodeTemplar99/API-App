// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:corefans_test/screens/home/components/drop_location.dart';
import 'package:corefans_test/screens/home/components/list_items.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return FloatingActionButton(
      onPressed: () {
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
