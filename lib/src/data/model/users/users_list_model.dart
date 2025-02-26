class UsersListModel {
  final String firstname;
  final String lastname;
  final String? lastMessage;
  final bool? isMe;
  final DateTime time;

  UsersListModel(
      {required this.firstname,
      required this.lastname,
      required this.lastMessage,
      required this.isMe,
      required this.time});
}
