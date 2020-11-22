import 'package:flutter/material.dart';
import 'package:todoin/models/story.dart';

class StoryCard extends StatelessWidget {
  final Story story;

  const StoryCard({
    Key key,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            story.imageUri,
            height: double.infinity,
            width: 145,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10.0,
          left: 7.0,
          child: Container(
            width: 140,
            child: Text(
              story.text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    color: Color(0xFF555555),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
