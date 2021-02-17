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
        body: IndexedStack(
          index: 2,
          children: [
            Container(
              color: Colors.red,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 250,
                height: 150,
                color: Colors.blueAccent,
              ),
            ),
            Positioned(
              left: 50,
              bottom: 200,
              child: Container(
                width: 180,
                height: 150,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
