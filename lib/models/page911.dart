import 'package:flutter/material.dart';

class Page911 {
  final String image, title, description, price;
  final int id, type;
  final Color color;

  Page911(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.type,
      required this.color});
}

List<Page911> pages911 = [
  Page911(
      id: 1,
      title: "911 Carrera",
      price: "10,990,000",
      type: 293,
      description:
          "The Coupé version of the 911 embodies Porsche DNA in its purest form: the long, flat bonnet, the steeply inclined windscreen. And the roof line that slopes gently down towards the rear, already characterised the original 911.",
      image: "assets/images/911_carrera.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  Page911(
      id: 2,
      title: "911 Carrera Cabriolet",
      price: "12,290,000",
      type: 291,
      description:
          "The open-top variant of the 911 has always been characterised by a heightened feeling of freedom and plenty of fresh air. When closed, the Cabriolet has the elegant silhouette of the 911 Coupé models – thanks to its fully automatic fabric hood.",
      image: "assets/images/911_Cab.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  Page911(
      id: 3,
      title: "911 Tagar 4",
      price: "13,090,000",
      type: 289,
      description:
          "The most stylish 911 model has the addition ‘targa’. With its characteristic roll-over bar and innovative roof concept, the 911 Targa is a timeless classic. And at the same time it is an open-top variant of the 911 with the comfort and safety of an enclosed car.",
      image: "assets/images/911_tagar.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  Page911(
      id: 4,
      title: "911 Turbo",
      price: "20,900,000",
      type: 320,
      description:
          "Our engineers like to talk about the most perfect sports car ever. Incredible performance, whilst being comfortable and fully suitable for everyday use. The 911 Turbo models continue this philosophy.",
      image: "assets/images/911_turbo.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  Page911(
      id: 5,
      title: "911 Turbo Cabriolet",
      price: "22,200,000",
      type: 320,
      description:
          "Our engineers like to talk about the most perfect sports car ever. Incredible performance, whilst being comfortable and fully suitable for everyday use. The 911 Turbo models continue this philosophy.",
      image: "assets/images/911_turbo_Cab.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  Page911(
      id: 6,
      title: "911 GT3 RS",
      price: "25,900,000",
      type: 296,
      description:
          "Athletes know: top performance requires more than perfect conditions and luck. Relentless training to become stronger and faster. Questioning everything, especially yourself. Learning from every mistake. Because the biggest challenge is to remain unbeatable. With this attitude, Porsche keeps pushing the boundaries of what is possible. Experience the new 911 GT3 RS in top form - with increased race track performance.",
      image: "assets/images/gt3_rs.png",
      color: Color.fromARGB(255, 68, 68, 68)),
];
