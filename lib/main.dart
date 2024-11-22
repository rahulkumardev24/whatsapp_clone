import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/add_call_screen.dart';
import 'package:whats_app_clone/screen/add_contact_screen.dart';
import 'package:whats_app_clone/screen/communities_screen.dart';
import 'package:whats_app_clone/screen/dash_board_screen.dart';
import 'package:whats_app_clone/screen/splash_screen.dart';
import 'package:whats_app_clone/screen/typing_screen.dart';
import 'package:whats_app_clone/screen/updates_screen.dart';
import 'package:whats_app_clone/screen/user_call_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      /// here we call Dash board screen
      home:  const SplashScreen()
    );
  }
}

/// project is complete
/// source code link is in the description box
/// FINAL TEST THE WHATSAPP CLONE
/// THANKS FOR WATCHING

