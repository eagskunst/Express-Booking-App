import 'package:express_booking_app/landing/landing.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Express Booking App',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Landing(),
      debugShowCheckedModeBanner: false,
    );
  }
}
