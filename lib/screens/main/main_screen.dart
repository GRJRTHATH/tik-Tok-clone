import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/friends/friends_screen.dart';
import 'package:tik_tok_clone/screens/home/home_screen.dart';
import 'package:tik_tok_clone/screens/inbox/inbox_screen.dart';
import 'package:tik_tok_clone/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final _widget = [
    const HomeScreen(),
    const FriendsScreen(),
    const InboxScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widget[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_20_regular),
              activeIcon: Icon(FluentIcons.home_20_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_20_regular),
              activeIcon: Icon(FluentIcons.people_20_filled),
              label: 'Friends'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.chat_20_regular),
              activeIcon: Icon(FluentIcons.chat_20_filled),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_20_regular),
              activeIcon: Icon(FluentIcons.people_20_filled),
              label: 'Profile'),
        ],
      ),
    );
  }
}
