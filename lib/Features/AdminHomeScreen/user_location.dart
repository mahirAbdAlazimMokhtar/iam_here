import 'package:flutter/material.dart';

class UserLocation extends StatefulWidget {
  const UserLocation({Key? key}) : super(key: key);

  @override
  _UserLocationState createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/map.png'),
              const SizedBox(height: 20,),
              const Text('Doctor Location', style: TextStyle(color: Color(0xff0089FF),fontSize: 44),)
            ],
          ),
        ),
      ),
    );
  }
}