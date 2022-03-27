import 'package:clubhouse_app/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/room_card.dart';
import '../widgets/start_room_button.dart';
import '../widgets/user_profile_image.dart';

class ClubHouseApp extends StatelessWidget {
  const ClubHouseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      floatingActionButton: IconButton(
        icon: const Icon(
          CupertinoIcons.paperplane,
          size: 30.0,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        elevation: 0,
        leading: AppBarIcon(icon: CupertinoIcons.search, theme: theme),
        actions: [
          AppBarIcon(theme: theme, icon: CupertinoIcons.envelope_open),
          AppBarIcon(theme: theme, icon: CupertinoIcons.calendar),
          AppBarIcon(theme: theme, icon: CupertinoIcons.bell),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 10, top: 10),
            child: UserProfileImage(
              imageURL: currentUser.imageURL,
              size: 34.0,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            children: [
              ...roomList.map(
                (oneRoom) => RoomCard(room: oneRoom),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    theme.scaffoldBackgroundColor.withOpacity(0.1),
                    theme.scaffoldBackgroundColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          StartRoomButton(theme: theme),
        ],
      ),
    );
  }
}
