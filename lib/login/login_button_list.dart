import 'package:express_booking_app/app_icon.dart';
import 'package:express_booking_app/login/login_button.dart';
import 'package:express_booking_app/login/login_divider.dart';
import 'package:flutter/material.dart';

class LoginButtonList extends StatelessWidget {
  final imgGoogle = AssetImage("assets/google-logo.png");
  final imgTwitter = AssetImage("assets/twitter-logo.png");
  final imgFacebook = AssetImage("assets/facebook-logo.png");
  final template = "Continue with ";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 20.0
          ),
          child: AppIcon(20, Color(0xFF3834AF))
        ),
        LoginButton(imgGoogle,Colors.white, template+"Google", Color(0xFF3834AF)),
        LoginButton(imgFacebook,Color(0xff475993), template+"Facebook", Colors.white),
        LoginButton(imgTwitter,Color(0xff28AAE1), template+"Twitter", Colors.white),
        LoginDivider(),
        LoginButton(null,Color(0xFF3834AF), "Create new account", Colors.white),
      ],
    );
  }
}
