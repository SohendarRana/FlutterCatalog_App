// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/items_widgets.dart';

class HomePage extends StatelessWidget {
  final int a = 30;
  final String name = "sohendar";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      20,
      (index) => CatalogModel.items[0],
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CatalogCart",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
