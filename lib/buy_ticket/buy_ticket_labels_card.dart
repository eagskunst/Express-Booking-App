import 'package:express_booking_app/buy_ticket/travel_date_container.dart';
import 'package:flutter/material.dart';

class BuyTicketCard extends StatelessWidget {

  String background = "assets/travel.jpg";

  @override
  Widget build(BuildContext context) {

    final fromLabel = Container(
      margin: EdgeInsets.only(
        bottom: 10
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: "Roboto",
        ),
        decoration: InputDecoration(
          hintText: 'From',
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.white54,
            fontSize: 12,
            fontFamily: "Roboto",
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none
          ),
          filled: true,
          fillColor: Colors.black45,
        ),
        cursorColor: Colors.white,
        maxLines: 1,
      ),
    );

    final toLabel = Container(
      margin: EdgeInsets.only(
          bottom: 10
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: "Roboto",
        ),
        decoration: InputDecoration(
          hintText: 'To',
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.white54,
            fontSize: 12,
            fontFamily: "Roboto",
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none
          ),
          filled: true,
          fillColor: Colors.black45,
        ),
        cursorColor: Colors.white,
        maxLines: 1,
      ),
    );

    final searchButton = Container(
      width: 350,
      height: 50,
      child: FlatButton(
        onPressed: ()=>{},
        color: Color(0xAA3834AF),
        child: Text(
          'SEARCH BUSES',
          textAlign: TextAlign.center,
        ),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
        ),
        padding: EdgeInsets.all(10),
      ),
    );

    final labelsColum = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        fromLabel,
        toLabel,
        TravelDate(),
        searchButton,
      ],
    );

    final ticketCard = Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 6,
        left: 20,
        right: 20
      ),
      height: 310,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover
        )
      ),
      child: labelsColum,
    );

    return ticketCard;
  }
}
