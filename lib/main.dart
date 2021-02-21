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
          toolbarOpacity: 0.5,
          elevation: 0,
          // centerTitle: true,
          brightness: Brightness.dark,
          titleSpacing: -2,
          // backgroundColor: Colors.deepPurple,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.yellow,
                    Colors.pink,
                    Colors.cyan,
                  ]),
            ),
          ),
          // title: Image.network(
          //     'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTybCniORbVSJJgvqcMaMwxSY4IL6OHxKftgQ&usqp=CAU'),
          title: Text("Selamat Malam"),
          leading: Icon(Icons.home),
          actions: [
            IconButton(
              onPressed: () => {
                print("Halo dunia"),
              },
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => {
                print("Halo world"),
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
