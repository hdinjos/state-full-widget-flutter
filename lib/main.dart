import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Builder"),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
          },
          separatorBuilder: (context, position) {
            if ((position + 1) % 5 == 0) {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                color: Colors.blueAccent,
                child: Text(
                  "Space Iklan",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}
