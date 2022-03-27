import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartRoomButton extends StatelessWidget {
  const StartRoomButton({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.add,
          size: 21,
          color: Colors.white,
        ),
        label: const Text(
          'Start a room ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 20.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          
          primary: theme.accentColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
