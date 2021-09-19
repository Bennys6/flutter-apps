import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image Widget"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              // alignment: Alignment(0, -0.75),
              // color: Colors.black,
              // width: 300,
              // height: 300,
              // padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -0.75),
                  image: AssetImage('assets/images/Ilustrasiiimage_1.png'),
                  fit: BoxFit.contain,
                ),
              ),
              // child: Image(
              //   image: AssetImage("assets/images/Ilustrasiiimage_1.png"),
              //   fit: BoxFit.cover,
              // ),
              // child: Image(
              //   image: NetworkImage(
              //       "https://media.tabloidbintang.com/files/thumb/lisa-blackpink_dok-ig21.JPG/745"),
              //   fit: BoxFit.contain,
              //   repeat: ImageRepeat.repeat,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
