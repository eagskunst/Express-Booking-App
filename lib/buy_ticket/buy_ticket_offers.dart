import 'package:flutter/material.dart';

class OfferTile extends StatelessWidget {

  Icon offerIc;
  String title;
  String subtitle;

  OfferTile(this.offerIc, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {

    final tile = ListTile(
      contentPadding: EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
        bottom: 5
      ),
      leading: offerIc,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontFamily: "Roboto",
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontFamily: "Roboto",
        ),
      ),
    );

    final tileContainer = Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
      child: tile,
    );

    return tileContainer;
  }
}
