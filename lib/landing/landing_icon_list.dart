import 'package:express_booking_app/app_icon.dart';
import 'package:express_booking_app/landing/landing_icon.dart';
import 'package:flutter/material.dart';

class LandingIconsList extends StatelessWidget {

  final icon1 = Icons.account_balance;
  final icon2 = Icons.directions_car;
  final icon3 = Icons.directions_bus;
  final icon4 = Icons.flight_takeoff;
  final icon5 = Icons.movie;
  final icon6 = Icons.tram;

  @override
  Widget build(BuildContext context) {
    final row1 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LandingIcon(icon1),
        LandingIcon(icon2)
      ],
    );
    final row2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LandingIcon(icon3),
        AppIcon(14, Colors.white),
        LandingIcon(icon4)
      ],
    );
    final row3 = Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        LandingIcon(icon5),
        LandingIcon(icon6)
      ],
    );
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            row1,
            row2,
            row3
          ],
        ),
      ),
    );
  }
}
