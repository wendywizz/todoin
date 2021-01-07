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
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: feeds.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(recents[index].name),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
