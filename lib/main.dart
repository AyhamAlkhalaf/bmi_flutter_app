import 'package:bmi_flutter_app/modules/bmi-result/bmi_result_screen.dart';
import 'package:bmi_flutter_app/modules/bmi/bmi_screen.dart';
import 'package:bmi_flutter_app/modules/counter/counter_screen.dart';
import 'package:bmi_flutter_app/modules/login/login_screen.dart';
import 'package:bmi_flutter_app/modules/messenger/messenger_screen.dart';
import 'package:bmi_flutter_app/modules/users/users-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

