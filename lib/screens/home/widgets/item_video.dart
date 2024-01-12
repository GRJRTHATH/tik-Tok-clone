import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ItemVideo extends StatefulWidget {
  final String title, url;
  const ItemVideo({super.key, required this.title, required this.url});

  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/${widget.url}');
    _controller.addListener(() {});
    _controller.setLooping(true);
    _controller.initialize();
    _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayer(_controller),
        Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              children: [
                Text(widget.title,
                    style: Theme.of(context).textTheme.titleLarge),
                const Text('Here is the video descriotion')
              ],
            )),
        const Positioned(
            child: Column(
          children: [
            ItemReact(icon: CupertinoIcons.heart_fill, text: '28.5k'),
            ItemReact(icon: Icons.comment, text: '102'),
            ItemReact(icon: CupertinoIcons.bookmark_fill, text: '255'),
            ItemReact(icon: FluentIcons.arrow_forward_20_filled, text: '289'),
          ],
        ))
      ],
    );
  }
}

class ItemReact extends StatelessWidget {
  final IconData icon;
  final String text;
  const ItemReact({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          const SizedBox(height: 3),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
