import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Judul AppBar"),
          ),
          body: Center(
            child: Container(
              width: 300,
              height: 400,
              alignment: Alignment.center,
              color: Color(0xffdc143c),
              child: Text(
                "Selamat datang bosq",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )),
    );
  }
}
