import 'package:express_booking_app/bus_companies/bus_company_card_list.dart';
import 'package:express_booking_app/bus_companies/bus_company_card.dart';
import 'package:express_booking_app/bus_companies/bus_item_overlap_card.dart';
import 'package:express_booking_app/bus_companies/header_bar.dart';
import 'package:flutter/material.dart';

class BusCompaniesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            HeaderBar(),
            BusItemCard(),
            Container(
              margin: EdgeInsets.only(
                  top: 340
              ),
              child: BusCardsList([
                "assets/bus-logo1.png",
                "assets/bus-logo2.png",
                "assets/bus-logo3.png",
                "assets/bus-logo4.png",
                "assets/bus-logo5.png",
                "assets/bus-logo3.png",
                "assets/bus-logo2.png",
                "assets/bus-logo1.png",
                "assets/bus-logo4.png",
              ]),
            ),
          ],
        ),
      )
    );
  }
}
