import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Container(
// height: 350,
// width: 350,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// color: Color(0xff1e1e2a),
// )
// ]),
// );
