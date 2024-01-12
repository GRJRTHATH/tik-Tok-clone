import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/friends/widgets/item_friend.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Friends',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.person_add),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
          ItemFriend(
              title: 'Yuri Grj',
              subtitle: 'You may know YUri  Grj',
              image: 'assets/images/profile.jpg'),
        ],
      ),
    );
  }
}
