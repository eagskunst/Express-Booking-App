import 'package:flutter/material.dart';

class BarCenterLogo extends StatelessWidget {
  String logo;

  BarCenterLogo(this.logo);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          top: 40
        ),
        child: Image.asset(
          logo,
          width: 50,
          height: 50,
        ),
      )
    );
  }
}
