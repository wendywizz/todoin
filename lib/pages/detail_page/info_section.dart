import 'package:flutter/material.dart';
import 'package:todoin/components/info_box.dart';

class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Beat\'s Co-Working Space',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Hatyai, Songkhla',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoBox(label: 'Followers', value: '100k'),
              InfoBox(label: 'Experience', value: '5 Yrs'),
              InfoBox(label: 'Rating', value: '4.8'),
            ],
          )
        ],
      ),
    );
  }
}
