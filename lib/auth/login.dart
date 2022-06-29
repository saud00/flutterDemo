// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback gotoHomePage;
  const LoginPage({Key? key, required this.gotoHomePage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(title: 'Flutter Demo Home Page')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOGIN
              Text(
                'Login',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 38,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: 40,
              ),

              // userName textfiled
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          border: InputBorder.none,
                          hintText: 'Email / Username'),
                      style: GoogleFonts.montserrat(
                          // fontWeight: FontWeight.bold,
                          // fontSize: 34,
                          color: Colors.grey[600]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // password field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outlined),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: InputBorder.none,
                          hintText: 'password'),
                      style: GoogleFonts.montserrat(
                          // fontWeight: FontWeight.bold,
                          // fontSize: 34,
                          color: Colors.grey[600]),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[700]),
                    ),
                  ),
                ],
              ),

              // signIn field
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.amber[600],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 157, 132, 30),
                            blurRadius: 2.0,
                            offset: Offset(0.0, 10.75))
                      ]),
                  child: Center(
                      child: TextButton(
                    // padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    title: "Home page",
                                  )));
                    },
                    child: Text(
                      'Continue',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )),
                ),
              ),
              // login

              SizedBox(height: 20),
              Text(
                'Or',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.grey[600]),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(0.0, 10.75))
                      ]),
                  child: Center(
                      child: GestureDetector(
                    onTap: widget.gotoHomePage,
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
