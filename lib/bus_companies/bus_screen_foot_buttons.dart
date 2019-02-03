import 'package:flutter/material.dart';

/*class FootButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: ()=>{},
          elevation: 0,
          color: Color(0xff3834AF),
          padding: EdgeInsets.all(8),
          child: Text('Prueba'),
          textTheme: ButtonTextTheme.accent,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: BorderSide(
                  color: Color(0xff3834AF),
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
        ),
        RaisedButton(
          onPressed: ()=>{},
          elevation: 0,
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Text('Prueba2'),
          textTheme: ButtonTextTheme.accent,
          textColor: Color(0xff3834AF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: BorderSide(
              color: Color(0xff3834AF),
              width: 1,
              style: BorderStyle.solid
            )
          ),
          animationDuration: Duration(seconds: 2),
        ),
      ],
    );
  }
}*/

class FootButtons extends StatefulWidget {
  @override
  FootButtonsState createState() => FootButtonsState();
}

class FootButtonsState extends State<FootButtons> {
  var acOn = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () => setState(() {
            if(acOn){
              acOn = false;
            }
          }),
          elevation: 0,
          color: acOn? Colors.white: Color(0xff3834AF) ,
          padding: EdgeInsets.all(8),
          child: Text(
            'AC',
            style: TextStyle(
                fontWeight: FontWeight.w600
            ),
          ),
          textTheme: ButtonTextTheme.accent,
          textColor: acOn ? Color(0xff3834AF):Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5)
              ),
              side: BorderSide(
                  color: Color(0xff3834AF),
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
        ),
        RaisedButton(
          onPressed: () => setState(() {
            if(!acOn){
              acOn = true;
            }
          }),
          elevation: 0,
          color: acOn? Color(0xff3834AF) : Colors.white,
          padding: EdgeInsets.all(8),
          child: Text(
            'NON-AC',
            style: TextStyle(
              fontWeight: FontWeight.w600
            ),
          ),
          textTheme: ButtonTextTheme.accent,
          textColor: acOn? Colors.white: Color(0xff3834AF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5)
              ),
              side: BorderSide(
                  color: Color(0xff3834AF),
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
        ),
      ],
    );
  }

}

