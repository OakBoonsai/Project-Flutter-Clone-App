import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/page911.dart';

class ItemCard2 extends StatelessWidget {
  const ItemCard2({super.key, required this.Pages911, required this.press});

  final Page911 Pages911;
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
                  color: Pages911.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${Pages911.id}",
                  child: Image.asset(Pages911.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                // products is out demo list
                Pages911.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\THB ${Pages911.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
