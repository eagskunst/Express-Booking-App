import 'package:express_booking_app/bus_companies/bus_companies_screen.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {

  IconData cardIcon;
  String cardTitle;
  String cardDesc;
  Color gradient1;
  Color gradient2;
  bool doTap;

  TicketCard(this.cardIcon, this.cardTitle, this.cardDesc, this.gradient1, this.gradient2, this.doTap);

  @override
  Widget build(BuildContext context) {

    final icon = Icon(
      cardIcon,
      color: Colors.white,
      size: 100,
    );

    final title = Container(
      margin: EdgeInsets.only(
        top: 10.0
      ),
      child: Text(
        cardTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
    );


    final desc = Container(
      margin: EdgeInsets.only(
          top: 10.0
      ),
      child: Text(
        cardDesc,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Roboto",
          fontSize: 12,
        ),
      ),
    );

    final cardContainer = Container(
      height: 190,
      width: 180,
      margin: EdgeInsets.only(
        top: 12.0,
        left: 5.0,
        right: 5.0
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
            colors: [
              gradient1,
              gradient2,
            ],
          tileMode: TileMode.clamp,
          begin: FractionalOffset.bottomRight,
          end: FractionalOffset.centerLeft,
        )
      ),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            title,
            desc
          ],
        ),
        onTap: (){
          if(doTap){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusCompaniesScreen()));
          }
        },
      )
    );

    return cardContainer;
  }
}
