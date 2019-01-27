import 'package:flutter/material.dart';
import 'package:express_booking_app/landing/landing_center_container.dart';
import 'package:express_booking_app/landing/landing_bottom_circle.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3834AF),
      body: Stack(
        children: <Widget>[
          LandingWidgetsContainer(),
          BottomCircle(436,-50),
          BottomCircle(490,-150),
        ],
      )
    );
  }
}