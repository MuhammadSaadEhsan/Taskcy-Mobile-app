import 'package:flutter/material.dart';

class MyColors {
  static Color primaryColor = const Color.fromRGBO(117, 110, 243, 1);

  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;
  }
}
