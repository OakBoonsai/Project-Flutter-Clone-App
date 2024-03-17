import 'package:flutter/material.dart';
import 'package:shop_app/models/pagePana.dart';

import '../../../constants.dart';

class ItemCard4 extends StatelessWidget {
  const ItemCard4({super.key, required this.Pagespana, required this.press});

  final PagePana Pagespana;
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
                  color: Pagespana.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${Pagespana.id}",
                  child: Image.asset(Pagespana.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                // products is out demo list
                Pagespana.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\THB ${Pagespana.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
