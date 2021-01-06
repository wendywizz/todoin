import 'package:flutter/material.dart';
import 'package:todoin/components/main_appbar.dart';
import 'package:todoin/components/page_header.dart';
import 'package:todoin/pages/home_page/category_section.dart';
import 'package:todoin/pages/home_page/feed_section.dart';
import 'package:todoin/pages/home_page/search_section.dart';

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
