import 'package:flutter/material.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/product');
    });
    return SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 100,bottom: 50,right: 15,left: 15),
              height: 500,
              width: 400,
              child:   Image.asset('assets/shoes.logo.png.png',),
        ),
        )
    );
  }
}