import 'package:flutter/material.dart';
import 'package:todoin/components/main_appbar.dart';
import 'package:todoin/components/page_header.dart';
import 'package:todoin/components/result_card.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageHeader(title: 'Find your place'),
              SectionResult(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ResultCard(),
          ResultCard(),
          ResultCard(),
        ],
      ),
    );
  }
}
