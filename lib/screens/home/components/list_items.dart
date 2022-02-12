// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

ListView buildListItems() {
  return ListView(
    padding: EdgeInsets.symmetric(horizontal: 18),
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.6, color: Colors.grey.shade500),
          ),
        ),
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lagos, Nigeria',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: Text(
                    '\$2,000',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
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
      Container(
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.6, color: Colors.grey.shade500),
          ),
        ),
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Jos, Nigeria',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: Text(
                    '\$2,000',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
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
    ],
  );
}
