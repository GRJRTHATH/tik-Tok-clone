import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/inbox/widgets/item_inbox.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.add_circled),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search))
        ],
      ),
      body: ListView(
        children: const [
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
          ItemInbox(
              title: 'Yuri Grj',
              subtitle: "Here is Your Message",
              image: 'assets/images/profile.jpg'),
        ],
      ),
    );
  }
}
