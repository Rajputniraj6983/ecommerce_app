
import 'package:flutter/material.dart';
import 'package:ui/secondscreen.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text('MY CART',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w300,),),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [

              ],
            ),
          ),
        ),
    );
  }
}
