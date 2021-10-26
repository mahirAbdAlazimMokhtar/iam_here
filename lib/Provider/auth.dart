import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
 bool _authntecated = false;
bool get authentcated => _authntecated;
void login({Map? credentials}){
  _authntecated = true;
  notifyListeners();
}

}