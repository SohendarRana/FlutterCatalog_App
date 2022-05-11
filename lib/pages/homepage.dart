// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int a = 30;
  final String name = "sohendar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CatalogCart",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(child: Text("Hello $name to $a days of flutter ")),
      ),
      drawer: MyDrawer(),
    );
  }
}
