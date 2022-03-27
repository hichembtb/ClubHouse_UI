import 'dart:math';
import 'package:clubhouse_app/models/room_model.dart';
import 'package:clubhouse_app/widgets/room_user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';
import '../widgets/appbar_icon.dart';
import '../widgets/custom_bottom_sheet.dart';
import '../widgets/user_profile_image.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({Key? key, required this.room}) : super(key: key);
  final RoomModel room;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 130.0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.chevron_down),
          label: const Text('Hallaway'),
        ),
        actions: [
          AppBarIcon(theme: theme, icon: CupertinoIcons.doc),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 10, top: 10),
            child: UserProfileImage(
              imageURL: currentUser.imageURL,
              size: 34.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${room.club} 🏠'.toUpperCase(),
                        style: theme.textTheme.overline!.copyWith(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0),
                      ),
                      const Icon(CupertinoIcons.ellipsis)
                    ],
                  ),
                  Text(
                    room.name,
                    style: theme.textTheme.bodyText1!.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15.0,
                  children: room.speaker
                      .map(
                        (oneSpeaker) => RoomUserProfile(
                          imageURL: oneSpeaker.imageURL,
                          name: oneSpeaker.firstName,
                          size: 66.0,
                          isNew: Random().nextBool(),
                          isMuted: Random().nextBool(),
                        ),
                      )
                      .toList()),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Followed By Speaker',
                style: theme.textTheme.subtitle2!.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.7,
                  children: room.speaker
                      .map(
                        (oneSpeaker) => RoomUserProfile(
                          imageURL: oneSpeaker.imageURL,
                          name: oneSpeaker.firstName,
                          size: 66.0,
                          isNew: Random().nextBool(),
                        ),
                      )
                      .toList()),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Others in the room',
                style: theme.textTheme.subtitle2!.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.7,
                children: room.others
                    .map(
                      (oneSpeaker) => RoomUserProfile(
                        imageURL: oneSpeaker.imageURL,
                        name: oneSpeaker.firstName,
                        size: 66.0,
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(
                bottom: 50,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const CustomBottomSheet(),
    );
  }
}
