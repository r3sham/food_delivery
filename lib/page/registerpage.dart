import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/text_field.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key, required this.onTap});
  final void Function()? onTap;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(Icons.ac_unit_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25,),
              // message app slogan
              Text("Food Delivery",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              const SizedBox(height: 25,),
              //email text-field
              MyTextField(controller: emailController, obscureText: false, hintText: "Email Address"),

              const SizedBox(height: 25,),

              //password textfield
              MyTextField(controller: passwordController, obscureText: true, hintText: "Password"),

              const SizedBox(height: 25,),
              // confirm password textfield
              MyTextField(controller: confirmPasswordController, obscureText: true, hintText: "Confirm password"),

              const SizedBox(height: 25,),
              //sign in button
               Button(onClick: () {}, text: 'Sign Up'),

              const SizedBox(height: 25,),
              //Already a member? Login now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a Member?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                    ),
                  ),
                  const SizedBox(width: 7,),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
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
