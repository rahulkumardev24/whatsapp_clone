import 'package:flutter/material.dart';
import 'package:whats_app_clone/app%20widgets/channels_follow_card.dart';
import 'package:whats_app_clone/app%20widgets/my_user_card.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar is same so we copy
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.green),
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

      /// camera floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff01d74c),
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.camera_alt_sharp,
          size: 30,
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// status text
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                "Status",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            /// user status part done
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    /// add status
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/girl5.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(200)),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(200)),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ],
                                  ),
                                )))
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// first user status
                    /// change all user profile
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girls3.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// second user status

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girl2.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// third user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/love.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// fourth first user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girl5.jpeg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// fifth
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girl6.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    /// sixth user status
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girls3.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(200)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),

            const Divider(
              thickness: 1.5,
            ),

            /// channels part
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 25,
                        color: Colors.green,
                      )
                    ],
                  )
                ],
              ),
            ),

            /// here we call my user card
            MyUserCard(
              imgPath: "assets/images/woman.png",
              subTitle: "Now see this video ",
              userName: "Love line",
              numberMess: "20",
            ),
            const SizedBox(
              height: 5,
            ),
            MyUserCard(
              imgPath: "assets/images/woman.webp",
              subTitle: "I am free today",
              userName: "Just Chill",
              numberMess: "11",
            ),
            const SizedBox(
              height: 5,
            ),
            MyUserCard(
              imgPath: "assets/images/kajol.webp",
              subTitle: "New post like ",
              userName: "Kajol",
              numberMess: "60",
            ),
            const SizedBox(
              height: 5,
            ),
            MyUserCard(
              imgPath: "assets/images/srk.jpg",
              subTitle: "share video",
              userName: "Srk fans",
              numberMess: "90",
            ),

            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Find channels to follow",
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ),

            ChannelsFollowCard(
                imgPath: "assets/images/news 1 .png",
                subTitle: "200 M Followers",
                userName: "Ajjtak"),
            const SizedBox(
              height: 10,
            ),
            ChannelsFollowCard(
                imgPath: "assets/images/news 2.jpg",
                subTitle: "50 M Followers",
                userName: "DD news")
          ],
        ),
      ),
    );
  }
}

/// now update screen ---> Start
/// here we create custom card for follow channels
/// updates screen complete check all code
/// done
