// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/05/JJK-Gojo-Juju-Sanpo-1.jpg";
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("Gojo Saturu"),
                accountEmail: Text("gojosaturu@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
