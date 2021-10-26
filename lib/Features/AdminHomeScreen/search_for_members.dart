import 'package:flutter/material.dart';

class SearchForMembers extends StatefulWidget {
  const SearchForMembers({Key? key}) : super(key: key);

  @override
  State<SearchForMembers> createState() => _SearchForMembersState();
}

class _SearchForMembersState extends State<SearchForMembers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHeaderText(),
              _buildSearchDoctor(),
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

  Padding _buildHeaderText() {
    return const Padding(
              padding:  EdgeInsets.only(top: 20.0),
              child: Text('Search For Members',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            );
  }

  Padding _buildSearchDoctor() {
    return Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 0, right: 0),
              child: Container(
                height: 72,
                width: 390,
                decoration: const BoxDecoration(
                  color: Color(0xffB3B4D9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'search for a doctor',
                        hintTextDirection: TextDirection.ltr,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        )),
                  ),
                ),
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

  //build Head Row Data
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

}
