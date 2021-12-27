import 'package:fb_clone/widgets/avatar.dart';
import 'package:fb_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postText;
  final String postImage;
  final bool blueTick;
  const PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postText,
      required this.postImage,
      this.blueTick = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection()
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.thumb_up,
              size: 15,
            ),
          ),
          Text(
            '20K',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        avatarImage: avatar,
        displayStatus: true,
      ),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 10,
          ),
          blueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(
            width: 15.0,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[600],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
        ),
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: Text(
        postText,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5,
        top: 5,
      ),
      child: Image.asset(postImage),
    );
  }
}
