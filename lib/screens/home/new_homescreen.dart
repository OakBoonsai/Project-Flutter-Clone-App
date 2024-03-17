import 'package:flutter/material.dart';
import 'package:shop_app/models/page718.dart';
import 'package:shop_app/models/pagePana.dart';
import 'package:shop_app/models/pageTaycan.dart';
import 'package:shop_app/screens/details/details_screen4.dart';

import 'package:shop_app/screens/home/components/item_card.dart';
import 'package:shop_app/screens/home/components/item_card2.dart';
import 'package:shop_app/screens/home/components/item_card3.dart';
import 'package:shop_app/screens/home/components/item_card4.dart';
import '../details/details_screen.dart';
import 'package:shop_app/models/page911.dart';

import '../details/details_screen2.dart';
import '../details/details_screen3.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Porsche'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "718",
              ),
              Tab(
                text: "911",
              ),
              Tab(
                text: "Taycan",
              ),
              Tab(
                text: "Panamera",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: pages911.length, // อ้างอิงไปยัง page911
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard2(
                  Pages911: pages911[index], // อ้างอิงไปยัง page911[index]
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen2(
                        Pages911: pages911[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: pagestay.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard3(
                  Pagestay: pagestay[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen3(
                        Pagestay: pagestay[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: pagepana.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard4(
                  Pagespana: pagepana[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen4(
                        Pagespana: pagepana[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
