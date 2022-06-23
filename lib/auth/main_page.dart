// ignore_for_file: prefer_const_constructors

import 'package:first_app/auth/auth.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool showLoginPage = true;
  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return AuthPage();
    } else {
      return HomePage(title: 'Flutter Demo Home Page');
    }
  }
}
