import 'dart:ui';

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
          title: Text(
            "Buat Text",
          ),
        ),
        body: Column(
          children: [
            Text(
              "Ini Text Pertama Saya saat belajar flutter. Sangat menyenangkan dapat belajar flutter dengan mudah dan menarik",
              style: TextStyle(
                fontFamily: "DancingScript",
                fontSize: 30,
                color: Colors.redAccent,
              ),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
            Stack(
              children: <Widget>[
                Text(
                  "Halo Dunia",
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.red[700],
                  ),
                ),
                Text(
                  "Halo Dunia",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
