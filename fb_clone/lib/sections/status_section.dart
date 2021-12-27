import 'package:fb_clone/asset.dart';
import 'package:fb_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        avatarImage: dh,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: 'what is on your mind...',
            hintStyle: TextStyle(color: Colors.black),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
