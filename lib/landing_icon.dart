import 'package:flutter/material.dart';

class LandingIcon extends StatelessWidget {

  IconData icon;

  LandingIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.indigoAccent
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
