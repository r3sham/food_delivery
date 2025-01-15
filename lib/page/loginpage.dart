
import 'package:flutter/material.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/text_field.dart';

import 'package:food_delivery/page/homepage.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;
  const LoginPage({super.key , required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(Icons.ac_unit_rounded,
                size: 72,
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
              ),
              const SizedBox(height: 25,),
              // message app slogan
              Text("Food Delivery",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .inversePrimary
                ),
              ),
              const SizedBox(height: 25,),
              //email textfield
              MyTextField(controller: emailController,
                  obscureText: false,
                  hintText: "Email Address"),

              const SizedBox(height: 25,),

              //password textfield
              MyTextField(controller: passwordController,
                  obscureText: true,
                  hintText: "Password"),
              const SizedBox(height: 25,),
              //sign in button
              Button(onClick: login, text: 'SignIn'),

              const SizedBox(height: 25,),
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a Member',
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary
                    ),
                  ),
                  const SizedBox(width: 7,),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .inversePrimary,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
