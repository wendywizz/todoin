import 'package:flutter/material.dart';
import 'package:todoin/components/section.dart';

class OfficeHourSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Office Hours',
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'Open and Close time',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            child: Text(
              '09:00 - 20:00',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
