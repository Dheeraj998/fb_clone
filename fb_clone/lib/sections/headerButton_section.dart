import 'package:flutter/material.dart';

class HeaderButttonSection extends StatelessWidget {
  const HeaderButttonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerButton(
        {required String buttonText,
        required IconData buttonIcon,
        required void Function() buttonAction,
        required Color color}) {
      return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: color,
        ),
        label: Text(buttonText),
      );
    }

    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: 'Live',
              buttonIcon: Icons.video_call,
              buttonAction: () {},
              color: Colors.red),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
              buttonText: 'Photos',
              buttonIcon: Icons.photo_library,
              buttonAction: () {},
              color: Colors.green),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
              buttonText: 'Room',
              buttonIcon: Icons.video_call,
              buttonAction: () {},
              color: Colors.purple),
        ],
      ),
    );
  }
}
