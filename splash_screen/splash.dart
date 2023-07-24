import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lost_and_found/features/home/screens/home_page.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() =>_SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
      ));
    });
    
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ Image.asset('splash_screen/logo.png', 
            scale: 30,
        ),
      ],
      ),
      ),
    );
  }
}

