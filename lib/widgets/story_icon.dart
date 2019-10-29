import 'package:flutter/material.dart';

class StoryIcon extends StatelessWidget {
  final String text;

  const StoryIcon({
    this.text = 'Your Story',
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFFF58529), Color(0xFFEE2A7B)],
                ),
              ),
            ),
            text == 'Your Story'
                ? Positioned(
                    top: 40,
                    right: 0,
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 20,
                    ),
                  )
                : SizedBox(width: 0),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 70,
          child: Center(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
