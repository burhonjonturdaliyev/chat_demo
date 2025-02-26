import 'package:chat_demo/src/util/common/common_appbar.dart';
import 'package:chat_demo/src/util/common/common_divider.dart';
import 'package:chat_demo/src/util/common/common_users_appbar.dart';
import 'package:chat_demo/src/widget/container/message_container.dart';
import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails(
      {super.key,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.colors});
  final int id;
  final String firstName;
  final String lastName;
  final Color colors;

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CommonAppbar.withWidget(
          titles: CommonUsersAppbar(
              firstname: widget.firstName,
              lastname: widget.lastName,
              colors: widget.colors)),
      bottomNavigationBar: MessageContainer(),
      body: Column(
        children: [
          CommonDivider(),
          Expanded(
            child: ListView.builder(
                itemCount: 20, itemBuilder: (context, index) => Text("data")),
          ),
        ],
      ),
    );
  }
}
