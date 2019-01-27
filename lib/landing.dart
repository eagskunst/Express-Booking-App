import 'package:express_booking_app/landing_icon_list.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
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
                  onPressed: ()=>{},
                  child: Text('GET STARTED'),
                  color: Colors.indigoAccent,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
