import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whats_app_clone/screen/calls_screen.dart';
import 'package:whats_app_clone/screen/chat_screen.dart';
import 'package:whats_app_clone/screen/communities_screen.dart';
import 'package:whats_app_clone/screen/updates_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  /// current screen show
  int currentScreen = 0;

  /// list of screen create
  /// here we call mu bottom navigation bar screen
  List<Widget> screen = [
    ChatScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black45,
          useLegacyColorScheme: true,
          unselectedLabelStyle: TextStyle(color: Colors.black45),
          currentIndex: currentScreen,
          showUnselectedLabels: true,
          selectedFontSize: 20,
          onTap: (value) {
            currentScreen = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Chats",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.update_sharp), label: "Updates"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.peopleGroup), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_sharp), label: "Calls"),
          ]),
    );
  }
}

/// bottom navigation part is done --> DONE
/// Chat Screen
///
