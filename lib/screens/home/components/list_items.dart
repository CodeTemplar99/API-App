// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Place> fetchPlaces() async {
//   final response = await http.get(
//     Uri.parse('https://corefans.co/api/location'),
//   );

//   if (response.statusCode == 200) {
//     print(Place.fromJson(jsonDecode(response.body)));
//     return Place.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('failed to get places');
//   }
// }

// class Place {
//   final int id;
//   final String country;
//   final String state;
//   final int amount;

//   const Place({
//     required this.id,
//     required this.country,
//     required this.state,
//     required this.amount,
//   });

//   factory Place.fromJson(Map<String, dynamic> json) {
//     return Place(
//       id: json['id'],
//       country: json['country'],
//       state: json['state'],
//       amount: json['amount'],
//     );
//   }
// }

// class ListItem extends StatefulWidget {
//   const ListItem({Key? key}) : super(key: key);

//   @override
//   _ListItemState createState() => _ListItemState();
// }

// class _ListItemState extends State<ListItem> {
//   late Future<Place> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchPlaces();
//     print(fetchPlaces());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.symmetric(horizontal: 18),
//       children: [
//         Container(
//           margin: EdgeInsets.only(bottom: 20.0),
//           decoration: BoxDecoration(
//             border: Border(
//               bottom: BorderSide(width: 0.6, color: Colors.grey.shade500),
//             ),
//           ),
//           height: 70,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Lagos, Nigeria',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 18.0),
//                     child: Text(
//                       '\$2,000',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.green),
//                     ),
//                   ),
//                   ClipOval(
//                     child: Container(
//                       color: Colors.red,
//                       child: Icon(
//                         Icons.close_rounded,
//                         color: Colors.white,
//                         size: 15,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(bottom: 20.0),
//           decoration: BoxDecoration(
//             border: Border(
//               bottom: BorderSide(width: 0.6, color: Colors.grey.shade500),
//             ),
//           ),
//           height: 70,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Jos, Nigeria',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 18.0),
//                     child: Text(
//                       '\$2,000',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.green),
//                     ),
//                   ),
//                   ClipOval(
//                     child: Container(
//                       color: Colors.red,
//                       child: Icon(
//                         Icons.close_rounded,
//                         color: Colors.white,
//                         size: 15,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
