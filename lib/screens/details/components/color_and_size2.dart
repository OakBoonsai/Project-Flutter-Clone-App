import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/page911.dart';

class ColorAndSize2 extends StatefulWidget {
  const ColorAndSize2({super.key, required this.Pages911});

  final Page911 Pages911;

  @override
  State<ColorAndSize2> createState() => _ColorAndSize2State();
}

class _ColorAndSize2State extends State<ColorAndSize2> {
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
                    color: Color.fromARGB(255, 43, 69, 31),
                    isSelected:
                        selectedColor == Color.fromARGB(255, 43, 69, 31),
                    onTap: () => setState(
                        () => selectedColor = Color.fromARGB(255, 43, 69, 31)),
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
                  text: "${widget.Pages911.type} km/h",
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
