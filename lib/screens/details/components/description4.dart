import 'package:flutter/material.dart';
import 'package:shop_app/models/pagePana.dart';

import '../../../constants.dart';

class Description4 extends StatelessWidget {
  const Description4({super.key, required this.Pagespana});

  final PagePana Pagespana;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        Pagespana.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
