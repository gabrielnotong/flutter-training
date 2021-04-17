import 'package:flutter/material.dart';

import 'screens/chest_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: Color(0xFFFFFFFF),
        )),
    home: ChestScreen(),
  ));
}
