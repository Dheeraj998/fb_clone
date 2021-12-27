import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarImage;
  final bool displayStatus;
  final bool displayBorder;
  Avatar(
      {required this.avatarImage,
      required this.displayStatus,
      this.displayBorder = false});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blue,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(
            left: 4,
            right: 4,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              avatarImage,
              width: 50,
              height: 50,
            ),
          ),
        ),
        Visibility(
          visible: displayStatus,
          child: Positioned(
            bottom: 0,
            right: 1,
            child: Container(
                height: 13.0,
                width: 15.0,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
