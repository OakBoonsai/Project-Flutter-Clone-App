import 'package:flutter/material.dart';
import 'package:shop_app/models/pagePana.dart';

import '../../../constants.dart';

class ColorAndSize4 extends StatefulWidget {
  const ColorAndSize4({super.key, required this.Pagespana});

  final PagePana Pagespana;

  @override
  State<ColorAndSize4> createState() => _ColorAndSize3State();
}

class _ColorAndSize3State extends State<ColorAndSize4> {
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
                  text: "${widget.Pagespana.type} km/h",
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
