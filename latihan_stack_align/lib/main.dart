import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Stack Align"),
          ),
          body: Stack(
            children: <Widget>[
              // background
              Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // listview dengan text
              FutureBuilder(
                future: rootBundle.loadString("assets/puisi.md"),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Markdown(data: snapshot.data.toString());
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              // button di tengah bawah
              Align(
                alignment: Alignment(0.9, 0.9),
                child: RaisedButton(
                  child: Text("Up"),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
