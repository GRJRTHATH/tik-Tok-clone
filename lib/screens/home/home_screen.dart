import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/home/widgets/item_video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: const [
            ItemVideo(title: 'Here is video 1 title', url: 'video1.mp4'),
            ItemVideo(title: 'Here is video 2 title', url: 'video2.mp4'),
            ItemVideo(title: 'Here is video 3 title', url: 'video3.mp4'),
            ItemVideo(title: 'Here is video 4 title', url: 'video4.mp4'),
          ],
        ),
        const Positioned(
          right: 15,
          top: 15,
          child: Icon(CupertinoIcons.search, size: 30),
        )
      ],
    );
  }
}
