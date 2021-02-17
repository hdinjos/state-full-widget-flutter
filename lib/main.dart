import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              // color: Colors.red,
            ),
            Positioned(
              right: 60,
              top: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Jam 12.00",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    "MALAM",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
