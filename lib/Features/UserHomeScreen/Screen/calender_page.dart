import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'custom_calenddar.dart';

class MyCalender extends StatefulWidget {




  @override
  State<MyCalender> createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            _buildHeader(),
            _buildName("Welcome Dr: Ahmed"),
            const SizedBox(height:15 ,),
            CustomCalendar()

          ]),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 5, bottom: 10),
        child: Column(children: [
          Image.asset(
            'assets/image/calender.png',
            height: 170,
            width: 600,
          ),
          const Text(
            'My Time Table',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff0089FF)),
          ),
        ]));
  }

  Widget _buildName(String name) {
    return Card(
      elevation: 1.5,
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
            color: Color(0xff251AD1)),
      ),
    );
  }
}
