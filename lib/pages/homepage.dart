// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/items_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int a = 30;

  final String name = "sohendar";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeddata = jsonDecode(CatalogJson);
    var productdata = decodeddata["products"];
    CatalogModel.items =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, Index) {
                  final item = CatalogModel.items[Index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(item.name),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.blueGrey),
                        ),
                        child: Image.network(item.image),
                        footer: Text(item.price.toString()),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
