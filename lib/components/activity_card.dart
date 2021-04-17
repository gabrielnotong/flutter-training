import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String label;

  ActivityCard({this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: Color(0xFFA8A7A7),
      ),
    );
  }
}
