import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails(
      {super.key,
      required this.id,
      required this.firstName,
      required this.lastName});
  final int id;
  final String firstName;
  final String lastName;

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
