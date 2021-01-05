import 'package:flutter/material.dart';
import 'package:todoin/components/feed_item.dart';
import 'package:todoin/components/main_appbar.dart';
import 'package:todoin/components/page_header.dart';
import 'package:todoin/components/story_card.dart';
import 'package:todoin/pages/list_page.dart';
import 'package:todoin/sources/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            children: [
              PageHeader(title: 'What would you like to ask?'),
              SectionSearch(),
              SectionCategory(),
              SectionFeed(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search for your room',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(Icons.tune_outlined),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

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
