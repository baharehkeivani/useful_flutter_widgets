import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  /// and other properties
  /// The only purpose of this widget is implementation of stroke text style without using Stack.
  /// You can add other attributes of a Text widget such as font family and etc. by yourself.
  /// Disadvantage of this Widget rather than using Stack is that we can't set strike width.

  final String text;
  final Color mainColor;
  final Color strokeColor;
  final double fontSize;

  const StrokeText(
      {Key? key,
      required this.text,
      required this.mainColor,
      required this.strokeColor,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: mainColor,
        shadows: [
          Shadow(
            //bottomLeft
            offset: const Offset(-1.5, -1.5),
            color: strokeColor,
          ),
          Shadow(
            //bottomRight
            offset: const Offset(1.5, -1.5),
            color: strokeColor,
          ),
          Shadow(
            //topRight
            offset: const Offset(1.5, 1.5),
            color: strokeColor,
          ),
          Shadow(
            //topLeft
            offset: const Offset(-1.5, 1.5),
            color: strokeColor,
          ),
        ],
      ),
    );
  }
}
