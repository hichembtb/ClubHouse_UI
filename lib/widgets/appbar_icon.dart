import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({Key? key, required this.theme, required this.icon})
      : super(key: key);

  final ThemeData theme;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, color: theme.iconTheme.color, size: 25.0),
    );
  }
}
