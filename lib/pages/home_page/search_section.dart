import 'package:flutter/material.dart';

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
