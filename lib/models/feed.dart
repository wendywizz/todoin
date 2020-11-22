import 'package:flutter/material.dart';

class Feed {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  Feed({
    @required this.icon,
    this.iconColor = Colors.grey,
    @required this.title,
    @required this.subtitle,
  });
}
