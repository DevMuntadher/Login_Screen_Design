import 'package:flutter/material.dart';
import 'package:login_screen_design/home.dart';
import 'package:login_screen_design/login.dart';
import 'package:login_screen_design/signin.dart';

void main(){
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
      routes: {
        "login" : (context) => const LoginPage(),
        "home":(context) => const HomePage(),
        "signup":(context) => const SignupPage(),
      },
      
    );
  }
}