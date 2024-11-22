import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/user_call_screen.dart';

class TypingScreen extends StatefulWidget {
  /// here we create constructor
  String? userName;
  String? userProfile;

  TypingScreen({super.key, this.userName, this.userProfile});

  @override
  State<TypingScreen> createState() => _TypingScreenState();
}

class _TypingScreenState extends State<TypingScreen> {
  @override
  Widget build(BuildContext context) {
    /// here we create static message between two person

    List<Map<String, dynamic>> userMessage = [
      {"type": "receiver", "message": "Hello! How are you?"},
      {"type": "sent", "message": "Hi! I am good. How about you?"},
      {
        "type": "receiver",
        "message": "I am doing great, thank you! What’s new with you?"
      },
      {
        "type": "sent",
        "message":
            "Nothing much, just working on a few projects. What about you?"
      },
      {
        "type": "receiver",
        "message": "Same here. Work has been keeping me busy lately."
      },
      {
        "type": "sent",
        "message":
            "I understand. By the way, did you watch the game last night?"
      },
      {
        "type": "receiver",
        "message":
            "Oh yes! It was an amazing match. I couldn’t take my eyes off the screen."
      },
      {
        "type": "sent",
        "message": "Absolutely! That last-minute goal was incredible."
      },
      {"type": "receiver", "message": "True! It was a game-changer for sure."},
      {
        "type": "sent",
        "message": "Indeed. Let’s catch up this weekend and talk more about it."
      },
      {
        "type": "receiver",
        "message": "Sounds like a plan! Let me know the time and place."
      },
      {"type": "sent", "message": "Will do. By the way, how’s your family?"},
      {
        "type": "receiver",
        "message":
            "They’re doing well, thanks for asking. How’s everyone on your end?"
      },
      {"type": "sent", "message": "They’re all good. Thanks for asking."},
      {
        "type": "receiver",
        "message": "Great to hear that. So, any travel plans coming up?"
      },
      {
        "type": "sent",
        "message":
            "Not yet, but I’m thinking of going on a short trip next month. How about you?"
      },
      {
        "type": "receiver",
        "message":
            "I’m planning a weekend getaway soon. It’s been a while since I took a break."
      },
      {
        "type": "sent",
        "message":
            "That’s a great idea. A short break can be really refreshing."
      },
      {
        "type": "receiver",
        "message": "Exactly. I’ll let you know how it goes."
      },
      {
        "type": "sent",
        "message": "Looking forward to it. Take care until then!"
      },
      {"type": "receiver", "message": "You too. Have a great day!"}
    ];

    /// you write according to your conversation
    return Scaffold(
      /// -------------------APP BAR ----------------------///
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(

                      /// if image is not fond then default image show
                      image: AssetImage(
                          widget.userProfile ?? "assets/images/coding.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 10,
            ),

            /// if user name is not found then username show
            Text(widget.userName ?? "userName"),
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              Icons.video_call,
              size: 30,
            ),
          ),

          /// call button
          /// when click on call button navigate to user call sc screen
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(

                      /// here we send info according to user
                      builder: (context) => UserCallScreen(
                            userName: widget.userName!,
                            userProfile: widget.userProfile!,
                          )));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Icon(
                Icons.call,
                size: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              Icons.more_vert,
              size: 30,
            ),
          )
        ],
      ),

      /// ----------------------------------------------- body  -------------------------///
      body: Stack(
        children: [
          Image.asset(
            "assets/images/girls3.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white38,
          ),

          /// here we create list view to show static message
          /// list view
          ListView.builder(
            itemCount: userMessage.length,
            itemBuilder: (context, index) {
              final message = userMessage[index];
              return Align(
                alignment: message['type'] == 'sent'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: message['type'] == 'sent'
                          ? Colors.green.shade300
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    message['message'],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              );
            },
          ),

          /// here create bottom message box

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(color: Colors.black, blurRadius: 3)
                            ]),
                        child: Row(
                          children: [
                            /// emoji button
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.emoji_emotions_outlined,
                                size: 30,
                              ),
                            ),

                            /// text filed
                            const Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Message",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            )),

                            /// attach icon
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.attach_file,
                                  size: 25,
                                ),
                              ),
                            ),

                            /// Rupees icon
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.currency_rupee,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),

                            /// camera icon
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.photo_camera_outlined,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// mic button
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: const Icon(
                          Icons.mic,
                          size: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// typing screen done
/// check
/// link to chat screen
/// when click on user chat then navigate to typing screen , according to that name name and profile
///  check
///  call screen --> start
/// add contact screen
/// START