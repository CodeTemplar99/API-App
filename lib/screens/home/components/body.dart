// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

// import 'package:corefans_test/screens/home/components/drop_location.dart';
// import 'package:corefans_test/screens/home/components/list_items.dart';
// import 'package:flutter/material.dart';

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//     required this.futurePlace,
//   }) : super(key: key);

//   final Future<Place> futurePlace;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: FutureBuilder<Place>(
//         future: futurePlace,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView(
//                 padding: EdgeInsets.symmetric(horizontal: 18),
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(bottom: 20.0),
//                     decoration: BoxDecoration(
//                       border: Border(
//                         bottom:
//                             BorderSide(width: 0.6, color: Colors.grey.shade500),
//                       ),
//                     ),
//                     height: 70,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Lagos, Nigeria',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(right: 18.0),
//                               child: Text(
//                                 '\$2,000',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.green),
//                               ),
//                             ),
//                             ClipOval(
//                               child: Container(
//                                 color: Colors.red,
//                                 child: Icon(
//                                   Icons.close_rounded,
//                                   color: Colors.white,
//                                   size: 15,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ]);
//           } else if (snapshot.hasError) {
//             return Center(child: Text('${snapshot.error}'));
//           }
//           throw Exception();
//         },
//       ),
//     );
//   }
// }
