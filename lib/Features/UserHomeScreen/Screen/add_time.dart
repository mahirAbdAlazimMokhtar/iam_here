import 'package:flutter/material.dart';

class UserAddTime extends StatelessWidget {
  const UserAddTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _addNewTimeHeader(),
            _spaceHeight(40),
            _headRow(),
            _buildHeadData(),
            _buildHeadData(),
            _buildHeadData(),
            _spaceHeight(20),
            _buildAddButton(),

          ],
        ),
      ),
    );
  }
  Widget _addNewTimeHeader(){
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, right: 5, bottom: 10),
      child: Row(
      children: [
      Image.asset(
      'assets/image/add_time.png',
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
    ]));
  }
  Widget _spaceHeight(double height){
    return SizedBox(
      height: height,
    );
  }
  Widget _buildHeadRow(String title, Color cardColor){
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

  Widget _buildTextFieldData(TextEditingController controller){
    return  Container(
      height:55 ,
      width: 107,
      color: Colors.white,
      child: TextField(
        controller:controller ,
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
  Widget _buildAddButton(){
    return GestureDetector(
      child: Container(
          width: 139,
          height: 38,
          decoration: const BoxDecoration(
            borderRadius : BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(30),
            ),
            color : Color.fromRGBO(108, 99, 255, 1),
          ),
          child: const Center(child: Text('Add Time' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
      ),
    );
  }
}
