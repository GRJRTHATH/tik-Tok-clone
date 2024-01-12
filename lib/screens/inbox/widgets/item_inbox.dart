import 'package:flutter/material.dart';

class ItemInbox extends StatelessWidget {
  final String title, subtitle, image;
  const ItemInbox(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 30,
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
      trailing: Container(
        padding: const EdgeInsets.all(5),
        decoration:
            BoxDecoration(color: Colors.red.shade700, shape: BoxShape.circle),
        child: const Text(
          '1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
