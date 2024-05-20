import 'package:flutter/material.dart';

class TextWithLines extends StatelessWidget {
  final String text;
  final Color lineColor;
  final double lineHeight;
  final TextStyle? textStyle;

  const TextWithLines({
    super.key,
    required this.text,
    this.lineColor = Colors.grey,
    this.lineHeight = 1.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: Divider(
              color: lineColor,
              height: lineHeight,
              thickness: lineHeight,
            ),
          ),
        ),
        Text(
          text,
          style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Divider(
              color: lineColor,
              height: lineHeight,
              thickness: lineHeight,
            ),
          ),
        ),
      ],
    );
  }
}
