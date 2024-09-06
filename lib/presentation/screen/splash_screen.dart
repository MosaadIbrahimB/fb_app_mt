import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goHomeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 55,
            child: Image.asset("assets/images/facebook-circle-logo.png"),
          ),
          const Expanded(child: SizedBox()),
          const Text("From"),
          SizedBox(
              width: 200,
              height: 50,
              child: Image.asset("assets/images/meta.png"))
        ],
      ),
    ));
  }

  goHomeScreen() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (c) =>  HomeScreen(),
        ),
      ),
    );
  }
}
