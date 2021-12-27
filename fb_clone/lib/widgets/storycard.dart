import 'package:fb_clone/widgets/circularbutton.dart';
import 'package:fb_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final bool addStory;
  final String labelText;
  final String story;
  final String avatar;
  final bool displayBorder;
  const StoryCard(
      {this.addStory = false,
      required this.labelText,
      required this.story,
      required this.avatar,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: addStory
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {},
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    avatarImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
          //Avatar(avatarImage: dh, displayStatus: true)
        ],
      ),
    );
  }
}
