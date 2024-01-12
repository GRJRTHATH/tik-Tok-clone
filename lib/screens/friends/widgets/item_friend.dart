import 'dart:math';

import 'package:flutter/material.dart';

class ItemFriend extends StatelessWidget {
  final String title, subtitle, image;
  const ItemFriend(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(radius: 40, backgroundImage: AssetImage(image)),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade900),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red.shade900),
                      child: Text(
                        'Follow',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
