import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:iam_here_doctor/Core/Const/Widgets/button_nav.dart';
import 'package:iam_here_doctor/Features/AdminHomeScreen/search_for_members.dart';

import 'all_user_calendar.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 20,),
              _buildHeadName(),
              const SizedBox(height: 20,),
              buildButton('Doctor Calender',356,76, const Color.fromRGBO(90, 168, 198, 1),33,goToAllUserCalendar),
              const SizedBox(height: 20,),
              buildButton('Search For Members',356,76, const Color.fromRGBO(90, 168, 198, 1),33,goToSearchMember),
              const SizedBox(height: 20,),
              _headRow(),
              _buildHeadData(),
              _buildHeadData()

            ],
          ),
        ),
      ),
    );
  }
  //this for build head name
  Widget _buildHeader(){
    return Stack(
     children: [
       Row(
         children: [
           Image.asset('assets/image/admin.png',),
           const Text('Iam Here',style: TextStyle(
               fontSize: 33,
               color: Color(0xff251AD1)
           ),)
         ],

       )],
    );
  }

  Widget _buildHeadName(){
    return const Card(
      elevation: 0,
      child:Text(
        'Admin Control',
        style: TextStyle(
          fontSize: 33,
          color: Color(0xff251AD1)
        ),
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
  Widget _buildHeadRow(String title, Color cardColor ){
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        height:55 ,
        width: 107,
        color: Colors.white,
        child: Card(
            elevation: 5,
            child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize:19 ),)),
            color:  cardColor
        ),
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



  void goToAllUserCalendar(){
    Get.to(()=> AllUserCalendar(),transition:Transition.leftToRight );
}
  void goToSearchMember(){
    Get.to(()=> SearchForMembers(),transition:Transition.leftToRight );
  }
}
