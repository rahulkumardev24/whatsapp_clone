import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatefulWidget {
  String imgPath;
  String userName;
  String subTitle;
  IconData callIcon ;
  CallCard(
      {super.key,
        required this.imgPath,
        required this.callIcon ,
        required this.subTitle,
        required this.userName});

  @override
  State<CallCard> createState() => _MyUserCardState();
}

class _MyUserCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
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

          Icon(widget.callIcon)
        ],
      ),
    );
  }
}

/// card design is complete
/// now constructor create
