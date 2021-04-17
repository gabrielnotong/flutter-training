import 'package:flutter/material.dart';

class ChestMenuItem extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  ChestMenuItem({this.text, this.textColor, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bgColor,
      ),
    );
  }
}
