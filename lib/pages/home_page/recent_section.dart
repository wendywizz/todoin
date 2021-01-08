import 'package:flutter/material.dart';
import 'package:todoin/sources/data.dart';

class SectionRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Booked',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: feeds.length,
              itemBuilder: (BuildContext context, int index) {
                final recent = recents[index];

                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          recent.introImage,
                          fit: BoxFit.fitHeight,
                          height: 150,
                        ),
                        SizedBox(height: 10),
                        Text(recent.name, style: TextStyle(fontSize: 16.0)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
