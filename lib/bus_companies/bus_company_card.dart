import 'package:express_booking_app/buy_ticket/buy_ticket_screen.dart';
import 'package:flutter/material.dart';

class BusCompanyCard extends StatelessWidget {

  String logo;

  BusCompanyCard(this.logo);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      padding: EdgeInsets.all(6),
      height: 80,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffE2E2F3),
            offset: Offset(0, 3),
            blurRadius: 3,
            spreadRadius: 0
          ),
          BoxShadow(
              color: Color(0xffE2E2F3),
              offset: Offset(0, 3),
              blurRadius: 3,
              spreadRadius: 0
          ),
          BoxShadow(
              color: Color(0xffE2E2F3),
              offset: Offset(0, 3),
              blurRadius: 3,
              spreadRadius: 0
          )
        ]
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BuyTicketScreen(logo)));
        },
        child: Center(
          child: Image.asset(
            logo,
            width: 40,
            height: 40,
          ),
        ),
      ),
    );
  }
}
