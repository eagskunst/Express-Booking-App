import 'package:express_booking_app/bus_companies/bus_company_card.dart';
import 'package:express_booking_app/bus_companies/bus_screen_foot_buttons.dart';
import 'package:flutter/material.dart';
import 'package:express_booking_app/bus_companies/bus_item_overlap_card.dart';


class BusCardsList extends StatelessWidget {

  List<String> assetsName;

  BusCardsList(this.assetsName);

  @override
  Widget build(BuildContext context) {
    bool _lights = true;
    final busList = ListView(
      shrinkWrap: bool.fromEnvironment("this",defaultValue: true),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BusCompanyCard(assetsName.elementAt(0)),
            BusCompanyCard(assetsName.elementAt(1)),
            BusCompanyCard(assetsName.elementAt(2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BusCompanyCard(assetsName.elementAt(3)),
            BusCompanyCard(assetsName.elementAt(4)),
            BusCompanyCard(assetsName.elementAt(5)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BusCompanyCard(assetsName.elementAt(6)),
            BusCompanyCard(assetsName.elementAt(7)),
            BusCompanyCard(assetsName.elementAt(8)),
          ],
        ),
        FootButtons()
      ],
    );

    return busList;
  }

}
