import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelsFollowCard extends StatefulWidget {
  String imgPath;
  String userName;
  String subTitle;
  String? numberMess;
  ChannelsFollowCard(
      {super.key,
        required this.imgPath,
        this.numberMess,
        required this.subTitle,
        required this.userName});

  @override
  State<ChannelsFollowCard> createState() => _MyUserCardState();
}

class _MyUserCardState extends State<ChannelsFollowCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  image:  DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.userName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subTitle,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            /// if user number pass message number then show message number

              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xffe3fdc9),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                     "Follow",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

/// card design is complete
/// now constructor create
