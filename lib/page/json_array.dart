// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'Object.dart';
//
// class JsonArray extends StatefulWidget {
//
//   @override
//   _JsonArrayState createState() => _JsonArrayState();
// }
//
// class _JsonArrayState extends State<JsonArray> {
//   String personArray = """
//   [
//   {"name" : "Mg Mg"},
//   {"name" : "Kyaw Kyaw"},
//   {"name" : "Aung Aung"}
//   ]
//   """;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Json Array'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: ListView(
//           children: [
//             ElevatedButton(onPressed: (){
//               List<dynamic> person = json.decode(personArray);
//
//               List<PersonOb> personList= [];
//               person.forEach((element) {
//                 personList.add(PersonOb.fromMap(element));
//               }
//               );
//               personList.forEach((element) {
//                 print(element.name);
//               });
//
//             },
//               child: Text('Json Array To Dart'),),
//           ],
//         ),
//       ),
//     );
//   }
// }
