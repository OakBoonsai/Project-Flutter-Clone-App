import 'package:flutter/material.dart';
import 'package:shop_app/models/pageTaycan.dart';

import '../../../constants.dart';

class Description3 extends StatelessWidget {
  const Description3({super.key, required this.Pagestay});

  final PageTay Pagestay;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        Pagestay.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
