import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/about.dart';
import 'package:flutter_application_3/screens/currency.dart';
import 'package:flutter_application_3/screens/home_screen.dart';
import 'package:flutter_application_3/screens/input_page.dart';
import 'package:flutter_application_3/screens/nilai.dart';
import 'package:flutter_application_3/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: WelcomeScreen(),
    );
  }
}
