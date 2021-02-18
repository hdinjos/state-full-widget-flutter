import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var date = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                right: 40,
                top: 100,
                child: Text(
                  date.hour.toString() + ":" + "0" + date.minute.toString(),
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 40,
                top: 145,
                child: Text(
                  date.day.toString() +
                      "/" +
                      "0" +
                      date.month.toString() +
                      "/" +
                      date.year.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                height: 150,
                bottom: 20,
                right: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kata Mutiara",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia."),
                      Text("Nelson Mandela"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
