import 'package:flutter/material.dart';
import 'package:shop_app/models/pageTaycan.dart';

import '../../../constants.dart';

class ColorAndSize3 extends StatefulWidget {
  const ColorAndSize3({super.key, required this.Pagestay});

  final PageTay Pagestay;

  @override
  State<ColorAndSize3> createState() => _ColorAndSize3State();
}

class _ColorAndSize3State extends State<ColorAndSize3> {
  Color selectedColor = Colors.grey; // Initially selected color

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color.fromARGB(255, 85, 179, 208),
                    isSelected:
                        selectedColor == Color.fromARGB(255, 85, 179, 208),
                    onTap: () => setState(() =>
                        selectedColor = Color.fromARGB(255, 85, 179, 208)),
                  ),
                  ColorDot(
                    color: Color.fromARGB(255, 2, 1, 0),
                    isSelected: selectedColor == Color.fromARGB(255, 2, 1, 0),
                    onTap: () => setState(
                        () => selectedColor = Color.fromARGB(255, 2, 1, 0)),
                  ),
                  ColorDot(
                    color: Color.fromARGB(255, 224, 223, 223),
                    isSelected:
                        selectedColor == Color.fromARGB(255, 224, 223, 223),
                    onTap: () => setState(() =>
                        selectedColor = Color.fromARGB(255, 224, 223, 223)),
                  ),
                  ColorDot(
                    color: Color.fromARGB(255, 124, 0, 116),
                    isSelected:
                        selectedColor == Color.fromARGB(255, 124, 0, 116),
                    onTap: () => setState(
                        () => selectedColor = Color.fromARGB(255, 124, 0, 116)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Top Speed\n"),
                TextSpan(
                  text: "${widget.Pagestay.type} km/h",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const ColorDot({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPaddin / 4,
          right: kDefaultPaddin / 2,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
