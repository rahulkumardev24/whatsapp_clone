import 'package:flutter/material.dart';
import 'package:whats_app_clone/app%20widgets/my_user_card.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
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
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(Icons.supervisor_account_rounded , size: 30, color: Colors.white,),
                      )) ,
                  const SizedBox(width: 8,),
                  const Text("New group" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)
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
        
            /// new community
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
                        child: Icon(Icons.supervisor_account_outlined , size: 30, color: Colors.white,),
                      )) ,
                  const SizedBox(width: 8,),
                  const Text("New community" , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)
                ],
              ),
            ) ,
            const SizedBox(height: 20,),
            
            const Padding(
              padding: EdgeInsets.only(left: 11.0),
              child: Text("contacts on whatsApp" , style: TextStyle(color: Colors.black87),),
            ) ,
            const SizedBox(height: 20,) ,
        
            /// here call user my user card

            MyUserCard(
                imgPath: "assets/images/girl1.jpeg",
                subTitle: "Just chilling with a cup of coffee ☕",
                userName: "Amish"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl2.jpg",
                subTitle: "Loving the weekend vibes 🌸",
                userName: "Priya"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl4.jpg",
                subTitle: "Dream big, achieve big! 💼✨",
                userName: "Sonia"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl2.jpg",
                subTitle: "Smile, it confuses people 😄",
                userName: "Ritika"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl4.jpg",
                subTitle: "Exploring the beauty of life 🌍💖",
                userName: "Anjali"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl6.jpg",
                subTitle: "Sunshine mixed with a little hurricane 🌞🌪️",
                userName: "Nisha"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl1.jpeg",
                subTitle: "Music is my escape 🎶❤️",
                userName: "Komal"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl2.jpg",
                subTitle: "Book lover 📚✨",
                userName: "Pooja"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl6.jpg",
                subTitle: "Adventure is out there! 🏞️🌟",
                userName: "Kajal"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl2.jpg",
                subTitle: "Living life one laugh at a time 😆",
                userName: "Riya"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl1.jpeg",
                subTitle: "Keep calm and sparkle on 💎✨",
                userName: "Kiran"
            ),
            const SizedBox(height: 16,),
            MyUserCard(
                imgPath: "assets/images/girl4.jpg",
                subTitle: "Capturing moments, not things 📸💫",
                userName: "Sneha"
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
      
    );
  }
}
