import "package:flutter/material.dart";

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.black,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
