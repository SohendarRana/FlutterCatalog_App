import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.green800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.size(20).make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).buttonColor),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
            ).wh(130, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context)
                .p8(),
            Expanded(
              child: VxArc(
                height: 20,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Theme.of(context).cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(Theme.of(context).accentColor)
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Est dolor sit diam eirmod accusam, sed justo no stet no accusam dolores amet stet lorem, et sed ut erat tempor lorem, ipsum at kasd sit elitr invidunt ipsum erat, duo voluptua ut labore diam amet dolor invidunt no erat, ea et dolore lorem aliquyam sed ipsum lorem.Diam ut."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p12()
                    ],
                  ).py32(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
