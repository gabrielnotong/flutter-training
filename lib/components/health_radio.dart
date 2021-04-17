import 'package:flutter/material.dart';

class HealthRadio extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final Color labelColor;

  HealthRadio({this.label, this.labelColor, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(0.0),
      minLeadingWidth: 0.0,
      leading: Icon(
        icon,
        color: iconColor,
        size: 10.0,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 15.0,
          color: labelColor,
        ),
      ),
    );
  }
}
