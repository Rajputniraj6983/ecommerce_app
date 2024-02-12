import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/cartscreen.dart';
import 'package:ui/productscreen.dart';
import 'package:ui/secondscreen.dart';
import 'package:ui/splashscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) =>   splashScreen(),
        '/product' : (context) =>  const productscreen(),
        '/second' : (context) =>   const secondscreen(),
        '/cart': (context) =>   const cartscreen(),


      }
    );
  }
}


