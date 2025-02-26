class MessagesModel {
  final bool isMe;
  final DateTime time;
  final String imagePath;
  final String message;

  MessagesModel(
      {required this.isMe,
      required this.time,
      required this.imagePath,
      required this.message});
}
