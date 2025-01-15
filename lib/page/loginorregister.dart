import 'package:flutter/material.dart';
import 'package:food_delivery/page/loginpage.dart';
import 'package:food_delivery/page/registerpage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool toggle = true;
  void onToggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (toggle) {
      return LoginPage(onTap: onToggle);
    }
    else {
      return RegisterPage(onTap: onToggle);
    }
  }
}
