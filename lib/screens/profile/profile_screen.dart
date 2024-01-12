import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/profile/widgets/item_video_thumbnail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  TabController? _controller;
  int currentIndex = 0;
  @override
  void initState() {
    _controller =
        TabController(length: 4, vsync: this, initialIndex: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yuri Grj', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.qrcode),
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 10),
          Center(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text('@username',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Following',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(horizontal: 15),
              ),
              Column(
                children: [
                  Text(
                    '12k',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Followers',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(horizontal: 15),
              ),
              Column(
                children: [
                  Text(
                    '102k',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Likes',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade700),
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade700),
                    child: Text(
                      'Add Friends',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.camera,
                size: 18,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Add Yours")
            ],
          ),
          const SizedBox(height: 20),
          TabBar(
            controller: _controller,
            dividerColor: Colors.white12,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            tabs: const [
              Tab(icon: Icon(CupertinoIcons.square_grid_4x3_fill)),
              Tab(icon: Icon(CupertinoIcons.lock_open)),
              Tab(icon: Icon(CupertinoIcons.bookmark)),
              Tab(icon: Icon(CupertinoIcons.heart)),
            ],
          ),
          IndexedStack(
            index: currentIndex,
            children: [
              GridView.count(
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  ItemVideoThumbnail(image: 'assets/images/thumbnail1.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail2.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail3.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail4.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail5.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail1.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail2.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail3.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail4.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail5.jpg'),
                ],
              ),
              GridView.count(
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  ItemVideoThumbnail(image: 'assets/images/thumbnail1.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail2.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail3.jpg'),
                ],
              ),
              GridView.count(
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  ItemVideoThumbnail(image: 'assets/images/thumbnail4.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail5.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail1.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail2.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail3.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail4.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail5.jpg'),
                ],
              ),
              GridView.count(
                crossAxisCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  ItemVideoThumbnail(image: 'assets/images/thumbnail2.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail3.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail4.jpg'),
                  ItemVideoThumbnail(image: 'assets/images/thumbnail5.jpg'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
