import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextStyle"),
        ),
        body: Center(
          child: Text(
            "Ini Adalah Text",
            style: TextStyle(fontFamily: "CrashLandingBB", fontSize: (40)),
          ),
        ),
      ),
    );
  }
}
