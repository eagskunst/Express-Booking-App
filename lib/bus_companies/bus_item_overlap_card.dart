import 'package:flutter/material.dart';

class BusItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top:120,
        left: 20,
        right: 20,
        bottom: 20
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Image.asset('assets/bus-image.png')
    );
  }
}
