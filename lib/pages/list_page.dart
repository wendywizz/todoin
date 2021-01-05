import 'package:flutter/material.dart';
import 'package:todoin/components/page_header.dart';
import 'package:todoin/components/result_card.dart';
import 'package:todoin/sources/data.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
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
      height: 800,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: rooms.length,
        itemBuilder: (BuildContext content, int index) {
          final room = rooms[index];
          return ResultCard(room: room);
        },
      ),
    );
  }
}
