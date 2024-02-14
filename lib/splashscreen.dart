import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hostelmanagement/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220,left: 50),
            child: Image.asset("images/hostel1.webp",width: 250,height: 250,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 485,left: 30),
            child: Text("Hostel Management",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}