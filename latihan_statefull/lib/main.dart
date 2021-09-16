import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Wiget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(
                    fontSize: 20 + number.toDouble(), color: Colors.blue),
              ),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tekanTombol,
              ),
              RaisedButton(child: Text("Reset Number"), onPressed: resetNumber)
            ],
          ),
        ),
      ),
    );
  }
}
