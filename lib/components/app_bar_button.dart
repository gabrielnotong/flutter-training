import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Function onPress;

  AppBarButton({this.icon, this.iconColor, this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(icon, color: iconColor),
      onPressed: onPress,
    );
  }
}
