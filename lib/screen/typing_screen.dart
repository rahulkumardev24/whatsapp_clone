import 'package:flutter/material.dart';

class TypingScreen extends StatefulWidget {
  const TypingScreen({super.key});

  @override
  State<TypingScreen> createState() => _TypingScreenState();
}

class _TypingScreenState extends State<TypingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -------------------APP BAR ----------------------///
      appBar: AppBar(
        title: const Text("userName"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                    image: AssetImage("assets/images/girls3.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
        actions: const [
          Icon(Icons.video_camera_back_outlined),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.call),
          ),
        ],
      ),

      /// ----------------------------------------------- body  -------------------------///
      body: Stack(
        children: [
          Image.asset("assets/images/girls3.jpg"),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white38,
          ),
          Positioned(
            left: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text("Hi"),
                )),
          ),
          Positioned(
            right: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text("Hi"),
                )),
          ),
        ],
      ),
    );
  }
}
