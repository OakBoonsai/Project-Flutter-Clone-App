import 'package:flutter/material.dart';
import 'package:shop_app/models/pageTaycan.dart';

import '../../../constants.dart';

class ItemCard3 extends StatelessWidget {
  const ItemCard3({super.key, required this.Pagestay, required this.press});

  final PageTay Pagestay;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                decoration: BoxDecoration(
                  color: Pagestay.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${Pagestay.id}",
                  child: Image.asset(Pagestay.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                // products is out demo list
                Pagestay.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\THB ${Pagestay.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
