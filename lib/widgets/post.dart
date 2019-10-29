import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.person, size: 15),
                      radius: 15,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'jfushada',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ),
          Image(
            image: AssetImage('images/haku_wallpaper3.png'),
            fit: BoxFit.fitHeight,
            height: 450,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '50 likes',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'jfushada',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'View all 5 comments',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'See Translation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
