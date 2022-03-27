import 'package:clubhouse_app/models/room_model.dart';
import 'package:clubhouse_app/models/user_model.dart';

const UserModel currentUser = UserModel(
  firstName: 'hichem',
  lastName: 'Boutalbi',
  imageURL:
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
);
const List<UserModel> allUsers = [
  UserModel(
    firstName: 'mohammed',
    lastName: 'amrani',
    imageURL:
        'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
  ),
  UserModel(
    firstName: 'aymen',
    lastName: 'sami',
    imageURL:
        'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
  ),
  UserModel(
    firstName: 'Ali',
    lastName: 'Boudour',
    imageURL:
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ),
  UserModel(
    firstName: 'Safaa',
    lastName: 'Amkroub',
    imageURL:
        'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
  ),
  UserModel(
    firstName: 'Amina',
    lastName: 'bendria',
    imageURL:
        'https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=444&q=80',
  )
];

final List<RoomModel> roomList = [
  RoomModel(
    club: 'Flutter Time',
    name: 'Special Time to play with Flutter and dart',
    speaker:
        (List<UserModel>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followBySpeaker: List<UserModel>.from(allUsers)..shuffle(),
    others: List<UserModel>.from(allUsers)..shuffle(),
  ),
  RoomModel(
    club: 'The best Room',
    name: '⏲ A Very Important person on Good Time',
    speaker:
        (List<UserModel>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followBySpeaker: List<UserModel>.from(allUsers)..shuffle(),
    others: List<UserModel>.from(allUsers)..shuffle(),
  ),
  RoomModel(
    club: 'CryptoCurrency Time',
    name: 'love and bitcoin edition 💰',
    speaker:
        (List<UserModel>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followBySpeaker: List<UserModel>.from(allUsers)..shuffle(),
    others: List<UserModel>.from(allUsers)..shuffle(),
  ),
  RoomModel(
    club: 'Hello World time',
    name: 'think with Developers about anything',
    speaker:
        (List<UserModel>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followBySpeaker: List<UserModel>.from(allUsers)..shuffle(),
    others: List<UserModel>.from(allUsers)..shuffle(),
  ),
];
