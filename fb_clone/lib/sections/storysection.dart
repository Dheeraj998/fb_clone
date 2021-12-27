import 'package:fb_clone/asset.dart';
import 'package:fb_clone/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: dh,
            addStory: true,
            story: dh,
            labelText: 'Add to Story',
            displayBorder: false,
          ),
          StoryCard(
            avatar: dh,
            story: imgg,
            labelText: 'Dheeraj',
            displayBorder: true,
          ),
          StoryCard(
            avatar: dh,
            story: gg,
            labelText: 'JAya',
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
