import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int a = 30;
  final String name = "sohendar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatalogKart"),
      ),
      body: Center(
        child: Container(child: Text("Hello $name to $a days of flutter ")),
      ),
      drawer: Drawer(),
    );
  }
}
