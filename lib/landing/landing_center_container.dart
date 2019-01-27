import 'package:express_booking_app/login/login.dart';
import 'package:flutter/material.dart';
import 'package:express_booking_app/landing/landing_icon_list.dart';

class LandingWidgetsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LandingIconsList(),
            Container(
              width: 180,
              height: 40,
              margin: EdgeInsets.only(
                  top: 30.0
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('GET STARTED'),
                color: Color(0xff5E5AD5),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
