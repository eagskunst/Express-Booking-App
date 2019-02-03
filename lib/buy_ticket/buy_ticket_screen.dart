import 'package:express_booking_app/buy_ticket/center_logo.dart';
import 'package:express_booking_app/bus_companies/header_bar.dart';
import 'package:flutter/material.dart';

class BuyTicketScreen extends StatelessWidget {


  String logo;

  BuyTicketScreen(this.logo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderBar(),
          BarCenterLogo(logo)
        ],
      ),
    );
  }
}
