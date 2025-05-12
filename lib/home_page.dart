import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Like Button Animation')),
      body: Center(
        child: LikeButton(
          size: 35,
          likeCount: 0,
          likeBuilder: (bool isLiked) {
            return Icon(
              CupertinoIcons.hand_thumbsup_fill,
              color: isLiked ? Colors.blue : Colors.grey,
              size: 30,
            );
          },
          countBuilder: (int? count, bool isLiked, String text) {
            var color = isLiked ? Colors.blue : Colors.grey;
            return Text(
              count == 0 ? "Like" : '$text Liked',
              style: TextStyle(color: color),
            );
          },
        ),
      ),
    );
  }
}
