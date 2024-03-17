import 'package:flutter/material.dart';
import 'package:shop_app/models/page911.dart';

import '../../../constants.dart';

class Description2 extends StatelessWidget {
  const Description2({super.key, required this.Pages911});

  final Page911 Pages911;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        Pages911.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
