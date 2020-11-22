import 'package:flutter/material.dart';
import 'package:todoin/models/feed.dart';

class FeedItem extends StatelessWidget {
  final Feed feed;
  final bool divider;

  const FeedItem({
    Key key,
    @required this.feed,
    this.divider = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              height: 50,
              width: 50,
              color: feed.iconColor,
              child: Icon(feed.icon, color: Colors.white),
            ),
          ),
          SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                feed.subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                feed.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Divider(color: Color(0xFFEAEAEA), thickness: 1.0),
            ],
          )
        ],
      ),
    );
  }
}
