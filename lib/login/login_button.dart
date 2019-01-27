import 'package:express_booking_app/book_ticket/book_ticket_screen.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  AssetImage image;
  Color backgroundColor;
  String text;
  Color textColor;
  LoginButton(this.image, this.backgroundColor, this.text, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15.0
      ),
      padding: EdgeInsets.only(
        top: 5.0,
        left: 8.0
      ),
      width: 300,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: backgroundColor,
          boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 8.0,
              offset: Offset(
              1.0,
              2.0
            )
          ),
        ]
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BookTicketScreen()));
        },
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            image == null ? Icon(Icons.person_add, color: Colors.white, size: 30):Image(image: image,height: 30, width: 30),
            Container(
              margin: EdgeInsets.only(
                  left: 60.0
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )
    );
  }
}
