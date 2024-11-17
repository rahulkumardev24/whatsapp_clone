import 'package:flutter/material.dart';
import 'package:whats_app_clone/app%20widgets/call_card.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  /// here we create static data for call
  List<Map<String, dynamic>> callData = [
    {
      "userProfile": "assets/images/girls3.jpg",
      "userName": "Priya Rani",
      "date": "Yesterday , 8:30 PM",
      "callType": Icons.video_camera_back_outlined
    },
    {
      "userProfile": "assets/images/girl2.jpg",
      "userName": "Rani",
      "date": "Yesterday , 10:30 PM",
      "callType": Icons.call
    },
    {
      "userProfile": "assets/images/jewelry.webp",
      "userName": "Riya",
      "date": "oct 10 , 8:30 PM",
      "callType": Icons.video_camera_back_outlined
    },
    {
      "userProfile": "assets/images/love.jpg",
      "userName": "Rani",
      "date": "Yesterday , 10:30 PM",
      "callType": Icons.call
    },
    {
      "userProfile": "assets/images/girl4.jpg",
      "userName": "Dost",
      "date": "sep 29, 12:30 PM",
      "callType": Icons.video_camera_back_outlined
    },
    {
      "userProfile": "assets/images/girl2.jpg",
      "userName": "Rani",
      "date": "Yesterday , 10:30 PM",
      "callType": Icons.call
    },
    {
      "userProfile": "assets/images/girls3.jpg",
      "userName": "Priya Rani",
      "date": "Yesterday , 8:30 PM",
      "callType": Icons.video_camera_back_outlined
    },
    {
      "userProfile": "assets/images/girl2.jpg",
      "userName": "Rani",
      "date": "Yesterday , 10:30 PM",
      "callType": Icons.call
    },
    {
      "userProfile": "assets/images/girls3.jpg",
      "userName": "Priya Rani",
      "date": "Yesterday , 8:30 PM",
      "callType": Icons.video_camera_back_outlined
    },
    {
      "userProfile": "assets/images/girl2.jpg",
      "userName": "Rani",
      "date": "Yesterday , 10:30 PM",
      "callType": Icons.call
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar is same , so copy
      appBar: AppBar(
        title: const Text(
          "Calls",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.qr_code_scanner,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),

          /// search icon
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.search_rounded,
              size: 30,
            ),
          )
        ],
      ),

      /// here we add add call button floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff01d74c),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add_call),
      ),

      /// body part
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorites",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Add favorites",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Recent",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),

              /// now create custom call card
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: callData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: CallCard(
                      imgPath: "${callData[index]["userProfile"]}",
                      subTitle: "${callData[index]["date"]}",
                      userName: "${callData[index]["userName"]}",
                      callIcon: callData[index]["callType"],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// calls Screen Start
/// complete call screen
/// check code
