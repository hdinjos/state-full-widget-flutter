import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List pages = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grid View"),
          ),
          body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: [
              GridView.count(
                // childAspectRatio: 3 / 4,
                scrollDirection: Axis.horizontal,
                crossAxisCount: 3,
                // reverse: true,
                padding: EdgeInsets.all(10),
                children: List.generate(
                  pages.length,
                  (index) {
                    return Container(
                      child: Card(
                        color: Colors.purpleAccent,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Pages " + pages[index].toString(),
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ],
          )),
    );
  }
}
