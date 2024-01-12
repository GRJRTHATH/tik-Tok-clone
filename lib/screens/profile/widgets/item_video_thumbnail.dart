import 'package:flutter/cupertino.dart';

class ItemVideoThumbnail extends StatelessWidget {
  final String image;
  const ItemVideoThumbnail({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}
