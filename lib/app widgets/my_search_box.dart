import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class MySearchBox extends StatelessWidget {

  /// here we create constructor
  String searchHit ;
  String? iconPath ;
  MySearchBox({required this.searchHit , this.iconPath});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,

        decoration: BoxDecoration(
            color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GifView(image: AssetImage("$iconPath")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(searchHit , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black45),),
            ),
          ],
        )),
      ),
    );
  }
}

/// search box complete ->
