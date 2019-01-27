import 'package:express_booking_app/app_icon.dart';
import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {

  final _color = Color(0xffA1A0D9);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
        top: 15.0
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 70,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(5.0, 5.0)),
              color: _color,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 8.0,
              right: 8.0
            ),
            child: AppIcon(8, _color),
          ),
          Container(
            width: 70,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(5.0, 5.0)),
              color: _color,
            ),
          )
        ],
      ),
    );
  }
}
