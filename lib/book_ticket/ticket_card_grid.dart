import 'package:flutter/material.dart';
import 'package:express_booking_app/book_ticket/ticket_card.dart';

class TicketsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            TicketCard(Icons.airplanemode_active, "Flight", "509 flights Available", Color(0xff01C6F8), Color(0xff01EAE2), false),
            TicketCard(Icons.directions_bus, "Bus", "800+ Bus Available", Color(0xffDCBE22), Color(0xffF9F5A9), true),
            TicketCard(Icons.train, "Train", "60 train Available", Color(0xff08C79E), Color(0xff80F6BC), false),
            TicketCard(Icons.local_taxi, "Cab", "5000 Cab Available", Color(0xffA074F3), Color(0xffE6B1F4), false),
            TicketCard(Icons.movie, "Movie", "12 Movie Hall Available", Color(0xffFF7C58), Color(0xffFFC080), false),
            TicketCard(Icons.hotel, "Hotel", "400 Hotel Available", Color(0xffFFA4AA), Color(0xffFB6BB1), false),
          ],
        )
    );
  }
}
