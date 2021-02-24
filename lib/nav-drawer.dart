import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[_drawerHeader()],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('assets/images/avatar_1.png'),
        fit: BoxFit.cover,
      ),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/avatar_2.jpg'),
        ),
      ),
      ClipOval(
        child: Image(
          image: AssetImage('assets/images/avatar_3.jpg'),
        ),
      ),
    ],
    accountName: Text("Belajar Flutter"),
    accountEmail: Text("tes@gamil.com"),
  );
}
