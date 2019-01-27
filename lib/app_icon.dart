import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  double font_size;
  Color font_color;

  AppIcon(this.font_size, this.font_color);

  @override
  Widget build(BuildContext context) {
    return Text(
      'EB',
      style: TextStyle(
          color: font_color,
          fontFamily: "Red Seven",
          fontSize: font_size,
          letterSpacing: 2
      ),
      textAlign: TextAlign.center,
    );
  }
}
