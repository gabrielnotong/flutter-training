import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final String label;
  final String unit;

  NumberCard({this.label, this.unit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          unit,
          style: TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
