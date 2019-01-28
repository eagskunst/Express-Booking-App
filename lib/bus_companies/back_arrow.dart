import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 10.0,
      ),
      child: InkWell(
          child: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white
          ),
          onTap: (){
            Navigator.pop(context);
          }
      ),
    );
  }
}
