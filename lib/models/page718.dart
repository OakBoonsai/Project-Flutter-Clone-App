import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int id, type;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.type,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "718 Cayman",
      price: "5,750,000",
      type: 275,
      description:
          "The 718 models were made for the sport of it. They are mid-engined roadsters that unite the sporting spirit of the legendary Porsche 718 with the sports car of tomorrow – and transfer it to the roads of today’s world. With one goal: to take the everyday out of every day.",
      image: "assets/images/718_Cayman.png",
      color: Color(0xFF989493)),
  Product(
      id: 2,
      title: "718 Cayman GT4 RS",
      price: "16,500,000",
      type: 315,
      description:
          "A razor-sharp track tool. A highly agile mid-engine concept with 4.0-litre displacement and a six-cylinder naturally aspirated engine. Six individual throttle valves for a direct response. A high-revving concept that easily scratches the 9,000 mark. An output of 368kW (500PS). Rational? Not always. Perfect? Always.",
      image: "assets/images/718_gt4_rs.png",
      color: Color(0xFF989493)),
  Product(
      id: 3,
      title: "718 Spyder RS",
      price: "16,500,000",
      type: 308,
      description:
          "Pure GT engineering in an unconditionally open 2-seater. Puristic, unfiltered, genuine. The 718 Spyder RS is a mid-engine roadster that leaves compromises behind in fractions of a second. For driving pleasure with a powerful sound that you can hear and feel immediately.",
      image: "assets/images/718_spyder_rs.png",
      color: Color(0xFF989493)),
];
