import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class TravelDate extends StatefulWidget {
  @override
  _TravelDateState createState() => _TravelDateState();
}

class _TravelDateState extends State<TravelDate> {

  final DateTime todayDate = DateTime.now();//Instance of today before $date, so the initialDate>firstDate
  DateTime date = DateTime.now();
  final formatter = DateFormat('yy-MMM-dd-EEE');//February 3, 2019 = 19-Feb-03-Sun
  List<String> dateInfo;//formate.format(date).split object instance

  final journeyText = Container(
    margin: EdgeInsets.only(
      bottom: 10
    ),
    child: Text(
      'Journey date',
      style: TextStyle(
        color: Colors.white54,
        fontSize: 12,
        fontFamily: "Roboto",
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

    dateInfo = formatter.format(date).split("-");

    final dayLabel = Container(
      margin: EdgeInsets.only(
        right: 8
      ),
      child: Text(
        dateInfo[2],
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Roboto",
          fontSize: 28
        ),
      ),
    );

    final weekDayNameLabel = Container(
      margin: EdgeInsets.only(
          bottom: 6
      ),
      child: Text(
        dateInfo[3],
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontSize: 14
        ),
      ),
    );

    final monthNameLabel = Container(
      margin: EdgeInsets.only(
          right: 3
      ),
      child: Text(
        dateInfo[1],
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontSize: 10
        ),
      ),
    );

    final yearNumberLabel = Text(
      dateInfo[0],
      style: TextStyle(
          color: Colors.white,
          fontFamily: "Roboto",
          fontSize: 10
      ),
    );

    final dayRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        monthNameLabel,
        yearNumberLabel
      ],
    );

    final dayColumn = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        weekDayNameLabel,
        dayRow
      ],
    );

    final dateContainer = InkWell(
      onTap: (){
        _selectDate(context);
      },
      child: Row(
        children: <Widget>[
          dayLabel,
          dayColumn
        ],
      ),
    );

    final datePickerColum = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        journeyText,
        dateContainer
      ],
    );

    final todayButton = Container(
      width: 60,
      height: 35,
      margin: EdgeInsets.only(
        right: 10
      ),
      child: RaisedButton(
        padding: EdgeInsets.all(3),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
        ),
        color: Colors.black54,
        child: Text('Today'),
        onPressed: (){
          setState(() {
            date = getDate();
          });
        },
      ),
    );

    final tomorrowButton = RaisedButton(
      padding: EdgeInsets.all(3),
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
      ),
      color: Colors.black54,
      child: Text('Tomorrow'),
      onPressed: (){
        setState(() {
          date = DateTime(todayDate.year, todayDate.month, todayDate.day+1);
        });
      },
    );

    final buttonRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        todayButton,
        tomorrowButton
      ],
    );

    final travelDateContainer = Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.only(
          bottom: 10
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          datePickerColum,
          buttonRow
        ],
      )
    );

    return travelDateContainer;
  }

  /*
  selectDate is a Future<Null> async function because the app will wait till the user
  picks a date.
  tutorial -> https://www.youtube.com/watch?v=8sFE8IQyv_c
   */
  Future<Null> _selectDate(BuildContext context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: getDate(),
        lastDate: DateTime(2020)
    );
    setState(() {
      if(picked != null && picked != date){
        date = picked;
      }
    });
  }

  DateTime getDate(){ //Get today date
    return DateTime(todayDate.year, todayDate.month, todayDate.day);
  }
}
