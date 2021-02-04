import 'package:class_routine/screen/add_routine_screen.dart';
import 'package:class_routine/screen/all_routine_screen.dart';
import 'package:class_routine/screen/login_screen.dart';
import 'package:class_routine/screen/register_screen.dart';
import 'package:class_routine/screen/today_routine_screen.dart';
import 'package:class_routine/slider_drawer/menu_widget.dart';
import 'package:class_routine/slider_drawer/slider_drawer.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
