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
        body: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 300,
          height: 300,
          transform: Matrix4.rotationZ(0.08),
          margin: EdgeInsets.only(
            top: 30,
            bottom: 30,
            left: 30,
            right: 30,
          ),
          alignment: Alignment.center,
          // color: Color(0xffdc143c),
          child: Text(
            "Selamat datang bosq",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
