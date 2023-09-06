import 'package:flutter/material.dart';
import 'package:great4you/pages/SignupPage.dart';
import 'pages/LoginPage.dart';

void main() {
  runApp(MyApp() as Widget);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Great 4 You',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}