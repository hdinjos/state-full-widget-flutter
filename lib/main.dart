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
          title: Text("Stack"),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Positioned(
              right: 40,
              top: 20,
              child: Container(
                width: 300,
                height: 400,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 130,
                height: 130,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
