import 'package:flutter/material.dart';

class WorkoutItem extends StatelessWidget {
  final String label;
  final int bgIconColor;
  final int iconColor;
  final IconData iconData;

  WorkoutItem({
    this.label,
    this.iconData,
    this.bgIconColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(bgIconColor),
        child: Icon(
          iconData,
          color: Color(iconColor),
        ),
      ),
      title: Text(label),
    );
  }
}
