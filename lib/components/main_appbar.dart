import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const MainAppbar({
    Key key,
    this.preferredSize = const Size.fromHeight(60.0),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: ButtonBar(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => print('Leading button pressed'),
            color: Color(0xFF111111),
          ),
        ],
      ),
    );
  }
}

Widget mainNavigation() {
  return AppBar(
    leading: ButtonBar(
      children: [
        IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () => print('Leading button pressed'),
          color: Color(0xFF111111),
        ),
      ],
    ),
  );
}
