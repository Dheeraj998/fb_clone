import 'package:fb_clone/asset.dart';
import 'package:fb_clone/sections/headerButton_section.dart';
import 'package:fb_clone/sections/room_section.dart';
import 'package:fb_clone/sections/status_section.dart';
import 'package:fb_clone/sections/storysection.dart';
import 'package:fb_clone/widgets/circularbutton.dart';
import 'package:fb_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
              buttonAction: () {},
              buttonIcon: Icons.search,
            ),
            CircularButton(buttonIcon: Icons.message, buttonAction: () {})
          ],
        ),
        body: ListView(children: [
          StatusSection(),
          thinDivider,
          HeaderButttonSection(),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            publishedAt: '5h',
            name: 'Dheeraj K',
            avatar: dh,
            postImage: dh,
            postText: 'Happy Diwalii!!!',
            blueTick: true,
          ),
        ]),
      ),
    );
  }
}
