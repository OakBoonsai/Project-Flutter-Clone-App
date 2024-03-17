import 'package:flutter/material.dart';

class PageTay {
  final String image, title, description, price;
  final int id, type;
  final Color color;

  PageTay(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.type,
      required this.color});
}

List<PageTay> pagestay = [
  PageTay(
      id: 1,
      title: "Taycan",
      price: " 6,190,000",
      type: 293,
      description:
          "From the racetrack to the road: Racetrack mode and Push-to-Pass. The optional Porsche Active Ride takes driving dynamics and agility to a new level on all-wheel drive models.",
      image: "assets/images/taycan.png",
      color: Color(0xFF989493)),
  PageTay(
      id: 2,
      title: "Taycan Turbo GT with Weissach package",
      price: "8,238,026",
      type: 291,
      description:
          "Generate a lot of downforce for fast lap times: fixed rear wing in carbon-weave finish, rear spoiler in exterior colour, front spoiler, aeroblades on the front end, front diffuser and air control elements on the underbody.",
      image: "assets/images/taycan_turbo.png",
      color: Color(0xFF989493)),
  PageTay(
      id: 3,
      title: "Taycan 4 Cross Turismo",
      price: "7,390,000",
      type: 289,
      description:
          "Expression of the desire for freedom: specific front and rear aprons, side skirts, wheel arch covers, ground clearance increased by 20 mm compared to the Sport Saloon and the optional Off-road design package.",
      image: "assets/images/tay_turis.png",
      color: Color(0xFF989493)),
];
