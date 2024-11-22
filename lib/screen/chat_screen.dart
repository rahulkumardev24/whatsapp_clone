import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whats_app_clone/app%20widgets/my_search_box.dart';
import 'package:whats_app_clone/app%20widgets/my_user_card.dart';
import 'package:whats_app_clone/screen/add_contact_screen.dart';
import 'package:whats_app_clone/screen/typing_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  /// here we create
  /// here we create static data set
  List<Map<String, dynamic>> chatData = [
    {
      "profileImg": "assets/images/girl2.jpg",
      "userName": "Pooja rani",
      "message": "Hey! How's it going?",
      "messageNumber": "3",
    },
    {
      "profileImg": "assets/images/girl1.jpeg",
      "userName": "Riya sharma",
      "message": "Can we catch up later?",
    },
    {
      "profileImg": "assets/images/girl4.jpg",
      "userName": "juli gupta",
      "message": "Meeting rescheduled to 3 PM.",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/girl5.jpeg",
      "userName": "pari delhi",
      "message": "Let's plan for the weekend.",
      "messageNumber": "1",
    },
    {
      "profileImg": "assets/images/girl6.jpg",
      "userName": "Rohan Mehta",
      "message": "Did you check the report?",
      "messageNumber": "4",
    },
    {
      "profileImg": "assets/images/girls3.jpg",
      "userName": "Priya Singh",
      "message": "Happy Birthday! 🎉",
    },
    {
      "profileImg": "assets/images/jewelry.webp",
      "userName": "Vikas Sharma",
      "message": "Can you share the files?",
      "messageNumber": "2",
    },
    {
      "profileImg": "assets/images/love.jpg",
      "userName": "Anjali Patel",
      "message": "Call me when you're free.",
      "messageNumber": "5",
    },
    {
      "profileImg": "assets/images/w.png",
      "userName": "Manoj Jain",
      "message": "Lunch at 1 PM?",
    },
    {
      "profileImg": "assets/images/woman.png",
      "userName": "Ritu Das",
      "message": "Good Morning! ☀️",
      "messageNumber": "7",
    },
    {
      "profileImg": "assets/images/woman.webp",
      "userName": "Ritu Das",
      "message": "Good Morning! ☀️",
      "messageNumber": "7",
    },
  ];

  ImagePicker imagePicker = ImagePicker() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions:  [
          const Icon(
            Icons.qr_code_scanner,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: (){
              imagePicker.pickImage(source: ImageSource.camera) ;
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),

      /// chat add button
      floatingActionButton: FloatingActionButton(
        /// when click on this chat add button navigate to add contact screen
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddContactScreen() ));
          },
          backgroundColor: Colors.green,
          child: Image.asset(
            "assets/icon/add.png",
            height: 35,
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MySearchBox(
                searchHit: "Ask Meta Al or Search",
                iconPath: "assets/icon/metaicon.gif",
              ),
            ),

            /// here we call chat screen
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: chatData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TypingScreen(
                                    userName: chatData[index]["userName"] ??
                                        "no userName",
                                    userProfile: chatData[index]
                                            ["profileImg"] ??
                                        "no profile",
                                  )));
                    },
                    child: MyUserCard(
                      imgPath: chatData[index]["profileImg"],
                      subTitle: chatData[index]["message"],
                      userName: chatData[index]["userName"],
                      numberMess: chatData[index]["messageNumber"],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

/// user card create now
/// chat screen complete
/// now typing screen create
///
/// SPLASH SCREEN CREATE LAST STEP
///