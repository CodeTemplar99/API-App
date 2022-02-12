// ignore_for_file: prefer_const_constructors

import 'package:corefans_test/screens/home/components/app_bar.dart';
import 'package:corefans_test/screens/home/components/body.dart';
import 'package:corefans_test/screens/home/components/floating_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      floatingActionButton: FloatingButton(),
    );
  }
}
