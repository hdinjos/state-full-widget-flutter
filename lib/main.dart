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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                // contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                title: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("this subtitle form " + bulan[index]),
                leading: CircleAvatar(
                  child: Text(
                    bulan[index][0],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
            // return Text(bulan[index]);
          },
          itemCount: bulan.length,
        ),
      ),
    );
  }
}
