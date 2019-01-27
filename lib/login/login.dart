import 'package:express_booking_app/login/login_button.dart';
import 'package:express_booking_app/login/login_button_list.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  final img = AssetImage("assets/google-logo.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3834AF),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: LoginButtonList(),
        ),
      ),
    );
  }
}
