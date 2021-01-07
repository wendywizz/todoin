import 'package:flutter/material.dart';
import 'package:todoin/components/feed_item.dart';
import 'package:todoin/pages/list_page.dart';
import 'package:todoin/sources/data.dart';

class SectionFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Need Help?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: feeds.length,
                itemBuilder: (BuildContext context, int index) {
                  final feed = feeds[index];

                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: FeedItem(feed: feed),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
