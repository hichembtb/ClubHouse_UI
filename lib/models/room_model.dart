import 'package:clubhouse_app/models/user_model.dart';

class RoomModel {
  final String club;
  final String name;
  final List<UserModel> speaker;
  final List<UserModel> followBySpeaker;
  final List<UserModel> others;

  const RoomModel({
    required this.club,
    required this.name,
    this.speaker = const [],
    this.followBySpeaker = const [],
    this.others = const [],
  });
}
