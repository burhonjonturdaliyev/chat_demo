import 'dart:ui';

class UsersListModel {
  final String firstname;
  final String lastname;
  final String? lastMessage;
  final bool? isMe;
  final DateTime time;
  final Color color;

  UsersListModel(
      {required this.firstname,
      required this.lastname,
      required this.lastMessage,
      required this.isMe,
      required this.time,
      required this.color});
}
