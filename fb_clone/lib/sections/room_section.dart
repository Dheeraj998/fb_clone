import 'package:fb_clone/asset.dart';
import 'package:fb_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          children: [
            createRoomButton(),
            Avatar(avatarImage: dh, displayStatus: true),
            Avatar(avatarImage: dh, displayStatus: true),
            Avatar(avatarImage: dh, displayStatus: true),
            Avatar(avatarImage: dh, displayStatus: true),
            Avatar(avatarImage: dh, displayStatus: true),
            Avatar(avatarImage: dh, displayStatus: true),
          ],
        ));
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.video_call),
      label: Text('Create \nRoom'),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.blue,
          width: 2,
        ),
        shape: StadiumBorder(),
      ),
    );
  }
}
