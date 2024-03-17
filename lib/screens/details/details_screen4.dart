import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/pagePana.dart';

import 'package:shop_app/screens/details/components/add_to_cart4.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';
import 'package:shop_app/screens/details/components/color_and_size4.dart';
import 'package:shop_app/screens/details/components/description4.dart';
import 'package:shop_app/screens/details/components/product_title_with_image4.dart';

class DetailsScreen4 extends StatelessWidget {
  const DetailsScreen4({super.key, required this.Pagespana});

  final PagePana Pagespana;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      backgroundColor: Pagespana.color,
      appBar: AppBar(
        backgroundColor: Pagespana.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize4(Pagespana: Pagespana),
                        SizedBox(height: kDefaultPaddin / 2),
                        Description4(Pagespana: Pagespana),
                        SizedBox(height: kDefaultPaddin / 2),
                        CartCounter(),
                        //CounterWithFavBtn(),
                        SizedBox(height: kDefaultPaddin / 2),
                        AddToCart4(Pagespana: Pagespana)
                      ],
                    ),
                  ),
                  ProductTitleWithImage4(Pagespana: Pagespana)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
