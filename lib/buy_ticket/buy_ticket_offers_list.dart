import 'package:express_booking_app/buy_ticket/buy_ticket_offers.dart';
import 'package:flutter/material.dart';

class TicketOfferList extends StatelessWidget {

  final subtitle = "use code first only on app";
  final title1 = "Save up to 25% BDT on bus ticket";
  final title2 = "Cashback up to 15% on bus ticket";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(
              left: 16,
              bottom: 10
          ),
          child: Text(
            'Offers for you',
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.start,
          ),
        ),
        OfferTile(Icon(Icons.card_giftcard), title1, subtitle),
        OfferTile(Icon(Icons.directions_car), title1, subtitle),
        OfferTile(Icon(Icons.monetization_on), title2, subtitle),
        OfferTile(Icon(Icons.attach_money), title2, subtitle),
      ],
    );
  }
}
