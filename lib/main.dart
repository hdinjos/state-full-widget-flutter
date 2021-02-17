import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(5),
          children: [
            Container(
              color: Colors.purple,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5),
            ),
          ],
        ),
      ),
    );
  }
}
