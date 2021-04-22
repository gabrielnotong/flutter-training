import 'package:flutter/material.dart';
import 'package:training/constants.dart';

class HealthRadio extends StatelessWidget {
  final Color iconColor;
  final String label;

  HealthRadio({this.label, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.circle,
          color: iconColor,
          size: 10.0,
        ),
        SizedBox(width: 10.0),
        Text(
          label,
          style: kGreyTextDefaultStyle,
        ),
      ],
    );
  }
}
