import 'package:flutter/material.dart';
import 'package:todoin/components/story_card.dart';
import 'package:todoin/sources/data.dart';

class SectionCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Category',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (BuildContext context, int index) {
                final story = stories[index];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: StoryCard(story: story),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
