import 'package:flutter/material.dart';
import 'package:shop_app/models/page718.dart';

import '../../../constants.dart';

class ColorAndSize extends StatefulWidget {
  final Product product;

  const ColorAndSize({super.key, required this.product});

  @override
  State<ColorAndSize> createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  Color selectedColor = Colors.grey; // Initial selected color

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
                    color: Color.fromARGB(255, 215, 215, 215),
                    isSelected:
                        selectedColor == Color.fromARGB(255, 215, 215, 215),
                    onTap: () => setState(() =>
                        selectedColor = Color.fromARGB(255, 215, 215, 215)),
                  ),
                  ColorDot(
                    color: Color.fromARGB(255, 2, 1, 0),
                    isSelected: selectedColor == Color.fromARGB(255, 2, 1, 0),
                    onTap: () => setState(
                        () => selectedColor = Color.fromARGB(255, 2, 1, 0)),
                  ),
                  ColorDot(
                    color: Color.fromARGB(255, 255, 0, 0),
                    isSelected: selectedColor == Color.fromARGB(255, 255, 0, 0),
                    onTap: () => setState(
                        () => selectedColor = Color.fromARGB(255, 255, 0, 0)),
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
                  text: "${widget.product.type} km/h",
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
  final VoidCallback onTap; // Callback for handling selection

  const ColorDot({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Use InkWell for tap handling
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
