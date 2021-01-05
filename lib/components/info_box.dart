import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String label;
  final String value;

  const InfoBox({
    Key key,
    this.label,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.label,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            this.value,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}
