import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodgo/screens/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Onboarding()),
      );
    }
    );
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/logo/Logo.png")),
    );
  }
}