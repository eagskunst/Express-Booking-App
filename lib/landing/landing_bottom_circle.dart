import 'package:flutter/material.dart';

class BottomCircle extends StatelessWidget {

  double topMargin;
  double rightMargin;

  BottomCircle(this.topMargin, this.rightMargin);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: 750,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Color(0x11FFFFFF),
              style: BorderStyle.solid,
              width: 35.0
          ),
        ),
      ),
      top: topMargin,
      right: rightMargin,
    );
  }
}
