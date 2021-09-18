import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      width: 514,
      height: 381.24,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 348,
                height: 143.29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0x190e8742),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 85.24,
            child: Container(
              width: 222.34,
              height: 148,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0x66404bab),
              ),
            ),
          ),
          Positioned(
            left: 97,
            top: 45.24,
            child: Text(
              "Futsal Kuy!",
              style: TextStyle(
                fontSize: 64,
                fontFamily: "Oswald",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            left: 70,
            top: 121.24,
            child: Container(
              width: 347,
              height: 260,
              child: FlutterLogo(size: 260),
            ),
          ),
        ],
      ),
    ));
  }
}
