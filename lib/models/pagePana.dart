import 'package:flutter/material.dart';

class PagePana {
  final String image, title, description, price;
  final int id, type;
  final Color color;

  PagePana(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.type,
      required this.color});
}

List<PagePana> pagepana = [
  PagePana(
      id: 1,
      title: "Panamera",
      price: " 7,300,000",
      type: 261,
      description:
          "The Panamera is for those who use freedom to follow their instincts. Who express themselves in the way they travel, not just in reaching their destination. Who make decisions based on their own desires and not what others think. We built this sports car for exactly these people.",
      image: "assets/images/panamera.png",
      color: Color.fromARGB(255, 68, 68, 68)),
  PagePana(
      id: 2,
      title: "panamera 4e hybrid",
      price: "7,700,000",
      type: 280,
      description:
          "The Panamera is for those who use freedom to follow their instincts. Who express themselves in the way they travel, not just in reaching their destination. Who make decisions based on their own desires and not what others think. We built this sports car for exactly these people.",
      image: "assets/images/pana_4e.png",
      color: Color.fromARGB(255, 68, 68, 68)),
];
