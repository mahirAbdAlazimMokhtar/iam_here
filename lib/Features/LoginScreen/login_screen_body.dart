import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iam_here_doctor/Core/Const/Widgets/custom_buttons.dart';
import 'package:iam_here_doctor/Core/Const/size_config.dart';
import 'package:get/get.dart';
import 'package:iam_here_doctor/Features/AdminHomeScreen/home_screen.dart';
import 'package:iam_here_doctor/Features/UserHomeScreen/Screen/home_screen.dart';
import 'package:iam_here_doctor/Provider/auth.dart';
import 'package:provider/provider.dart';

class LoginScreenBody extends StatelessWidget {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  late final String _username;
  late final String _password;

  @override
  Widget build(BuildContext context) {
    void submited() {
      Provider.of<Auth>(context,listen: false).login(
          credentials: {
            'email':_username,
            'password':_password
          }
      );
    }
    void goToUserScreen() {
      Get.to(() => HomeScreenUser(), transition: Transition.fadeIn);
    }

    void goToAdminScreen() {
      Get.to(() => const AdminHomeScreen(), transition: Transition.fadeIn);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildHeader(),
            _spaceHeight(50),
            _buildButton(),
            _buildFormField(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(children: [
      Center(
          child: Image.asset(
        'assets/image/welcome.png',
        width: 190,
      )),
      const Text(
        'Welcome!',
        style: TextStyle(fontSize: 25),
      )
    ]);
  }

  Widget _spaceHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _buildFormField() {
    return Form(
      key: _formState,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(0, 0, 0, 1),
                    offset: Offset(6, 2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 9),
                    offset: Offset(-0, -1),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                onSaved: (value){
                  _username = value!;
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your phone number',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(0, 0, 0, 1),
                    offset: Offset(6, 2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 9),
                    offset: Offset(-0, -1),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                onSaved: (value){
                  _password = value!;
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildButton(){
    return Container(
      width: 428,
      height: 470,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
        color: Color.fromRGBO(74, 30, 199, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 5,
            ),
            InkWell(
              onTap: () {
              _formState.currentState!.save();
              // this.submited();
              },
              child: const GeneralButton(
                text: 'Login',
                color: Color(0xff4A1EC7),
              ),
            ),
          ],
        ),
      ),
    );
  }


}



