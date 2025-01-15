import 'package:flutter/material.dart';
import 'package:food_delivery/page/loginorregister.dart';
import 'package:food_delivery/page/loginpage.dart';
import 'package:food_delivery/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create: (context)=> ThemeProvider(),
      child:  myApp(),
    )
  );
}


class myApp extends StatelessWidget {
  const myApp({super.key});
  void onTap() {

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData
    );
  }
}
