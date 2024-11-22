import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/dash_board_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    /// here we apply logic for splash screen after 3 sec navigate to dashboard screen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/whatsapp.png",
              height: 100,
            ),
            const SizedBox(
              height: 400,
            ),
            const Text(
              "From",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icon/meta.png",
                  height: 30,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Meta",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
