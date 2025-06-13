import '../Onboarding/first_onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstOnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: mq.width * 0.4,
                  height: mq.width * 0.4,
                ),
                SizedBox(height: mq.height * 0.03),
                Text(
                  "Animal Sound Prank & \n Ringtones",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: mq.width * 0.055,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: mq.height * 0.06,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                backgroundColor: CupertinoColors.transparent,
                radius: 40,
                backgroundImage: AssetImage("assets/images/paw logo.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
