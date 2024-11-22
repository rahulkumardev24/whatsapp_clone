import 'package:flutter/material.dart';
import 'package:whats_app_clone/app%20widgets/my_user_card.dart';

class AddCallScreen extends StatefulWidget {
  const AddCallScreen({super.key});

  @override
  State<AddCallScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// app bar
      appBar: AppBar(title: Text("Select contact"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_outlined)),
        actions: const [
          Icon(Icons.search_rounded),
          Icon(Icons.more_vert),

        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// new group
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.green ,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(Icons.link , size: 30, color: Colors.white,),
                      )) ,
                  const SizedBox(width: 8,),
                  const Text("New call link" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)
                ],
              ),
            ) ,
            const SizedBox(height: 22,),

            /// new contact
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.green ,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(Icons.person_add_alt , size: 30, color: Colors.white,),
                      )) ,
                  const SizedBox(width: 8,),
                  const Text("New contact" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)
                ],
              ),
            ) ,

            const SizedBox(height: 22,),


            const Padding(
              padding: EdgeInsets.only(left: 11.0),
              child: Text("Frequently contacted" , style: TextStyle(color: Colors.black87),),
            ) ,
            const SizedBox(height: 20,) ,

            /// this code is copy from community screen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/woman.webp"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Sister",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Best Friend",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl5.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Room mate",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,) ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/woman.webp"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Sister",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Best Friend",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 11.0),
              child: Text("Contacts on whatsAap" , style: TextStyle(color: Colors.black87),),
            ) ,

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl5.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Room mate",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/woman.webp"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Sister",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Best Friend",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/girl5.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Room mate",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}

/// this code is copy from add chat contact screen