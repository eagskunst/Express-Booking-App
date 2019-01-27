import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
      ),
    );
  }
}
