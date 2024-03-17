import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/page911.dart';
import 'package:shop_app/screens/details/components/add_to_cart2.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';
import 'package:shop_app/screens/details/components/color_and_size2.dart';
import 'package:shop_app/screens/details/components/description2.dart';
import 'package:shop_app/screens/details/components/product_title_with_image2.dart';

class DetailsScreen2 extends StatelessWidget {
  const DetailsScreen2({super.key, required this.Pages911});

  final Page911 Pages911;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      backgroundColor: Pages911.color,
      appBar: AppBar(
        backgroundColor: Pages911.color,
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
                        ColorAndSize2(Pages911: Pages911),
                        SizedBox(height: kDefaultPaddin / 2),
                        Description2(Pages911: Pages911),
                        SizedBox(height: kDefaultPaddin / 2),
                        CartCounter(),
                        //CounterWithFavBtn(),
                        SizedBox(height: kDefaultPaddin / 2),
                        AddToCart2(Pages911: Pages911)
                      ],
                    ),
                  ),
                  ProductTitleWithImage2(Pages911: Pages911)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
