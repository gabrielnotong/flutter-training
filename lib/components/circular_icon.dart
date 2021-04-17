import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final Color iconColor;

  CircularIcon({this.icon, this.iconColor, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor,
      radius: 25.0,
      child: Icon(
        icon,
        size: 30.0,
        color: iconColor,
      ),
    );
  }
}
