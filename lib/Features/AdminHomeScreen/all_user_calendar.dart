import 'package:flutter/material.dart';
import 'package:iam_here_doctor/Features/UserHomeScreen/Screen/custom_calenddar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';



class AllUserCalendar extends StatefulWidget {




  @override
  State<AllUserCalendar> createState() => _AllUserCalendarState();
}

class _AllUserCalendarState extends State<AllUserCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            _buildHeader(),
            _buildName("All Time Table"),
            const SizedBox(height:15 ,),
            CustomCalendar(),
            const SizedBox(height: 20,),
            _headRow(),
            _buildHeadData(),
            _buildHeadData()

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
  Widget _buildHeadData(){
    return FittedBox(
      child: Row(
        children: [
          _buildHeadRow('Mahir', const Color(0xffA2B4C8)),
          _buildHeadRow('2:30 AM', const Color(0xffA2B4C8)),
          _buildHeadRow('4:30 PM', const Color(0xffA2B4C8)),
          _buildHeadRow('-', const Color(0xffA2B4C8)),
        ],
      ),
    );
  }
  //build Head Row
  Widget _buildHeadRow(String title, Color cardColor){
    return Container(
      height:55 ,
      width: 107,
      color: Colors.white,
      child: Card(
          elevation: 5,
          child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize:19 ),)),
          color:  cardColor
      ),
    );
  }
  Widget _headRow(){
    return FittedBox(
      child: Row(
        children: [
          _buildHeadRow('Location', const Color(0xff1A69C6)),
          _buildHeadRow('Start Time', const Color(0xff1A69C6)),
          _buildHeadRow('End Time', const Color(0xff1A69C6)),
          _buildHeadRow('Edit\\Del', const Color(0xff1A69C6)),
        ],
      ),
    );
  }

}


