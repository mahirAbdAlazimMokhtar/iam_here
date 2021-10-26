import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iam_here_doctor/Core/Const/size_config.dart';
import 'package:iam_here_doctor/Features/UserHomeScreen/Model/user_model.dart';

import 'add_time.dart';
import 'calender_page.dart';

class HomeScreenUser extends StatelessWidget {
  final List<UserModel> userModel=[
    UserModel(name: 'Mahir',location: 'Giza' ,endTime: DateTime.now(),startTime: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 5, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/image/location.png',
                    height: 170,
                    width: 200,
                  ),
                  const Expanded(
                    child: Text(
                      'Iam Here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xff251AD1)),
                    ),
                  ),
                ],
              ),
            ),
            const Card(
              elevation: 1.5,
              child: Text(
                "Welcome Dr: Ahmed",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xff251AD1)),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
            _buildButton('My Calender',356,76, const Color.fromRGBO(90, 168, 198, 1),33,goToMyCalender),
            const SizedBox(
              height: 20,
            ),
            _buildButton('Add New',356,76, const Color.fromRGBO(90, 168, 198, 1),33,goToAddNewTime),
            const SizedBox(height: 15,),
            _buildRowTable('Location','Start Time' , 'End Time' , 'Edit\\Del',const Color(0xff1A69C6),),
            const SizedBox(height: 15,),
            _buildRowTable('Giza','2:00 AM' , '4:00 PM' , '-',const Color(0xffA2B4C8),),
            const SizedBox(height: 15,),
            _buildRowTable('Fuad A','12:00 AM' , '2:00 PM' , '-',const Color(0xffA2B4C8),),
            const SizedBox(height: 15,),
            _buildRowTable('Cairo A','12:00 AM' , '2:00 PM' , '-',const Color(0xffA2B4C8),),

          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title,double width , double height,Color color,double fontSize, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,//356,
        height: height,//76,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 356,
                  height: 76,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: color,
                  ))),
          Positioned(
            top: 25,
            left: 95,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: fontSize,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
        ]),
      ),
    );
  }
  Widget _buildRowTable(String location, String startTime , String endTime , String editDel,Color cardColor){
    return Column(
      children: [
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            _buildTableButton(location,cardColor),
            _buildTableButton(startTime,cardColor),
            _buildTableButton(endTime,cardColor),
            _buildTableButton(editDel,cardColor),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildTableButton(String title,Color cardColor) {
    return Container(
            height:55 ,
            width: 107,
      color: Colors.white,
      child: Card(
        elevation: 0,
        child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize:19 ),)),
        color:  cardColor
      ),
          );
  }
  void goToMyCalender(){
    Get.to(()=> MyCalender(),transition:Transition.leftToRight );
  }
  void goToAddNewTime(){
    Get.to(()=>  UserAddTime(),transition: Transition.rightToLeftWithFade);
  }

}
