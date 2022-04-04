// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://yt3.ggpht.com/ytc/AKedOLRXr68KcEsw77w_IK4v-vdHpsVRKHLEnpvOoyPj=s900-c-k-c0x00ffffff-no-rj";
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
                accountName: Text("Sohendar Rana"),
                accountEmail: Text("sohendar1@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                "Home",
                textScaleFactor: 2.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 2.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                "Email",
                textScaleFactor: 2.5,
                style: (TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
