import 'package:chat_demo/src/data/const/const_values.dart';
import 'package:chat_demo/src/util/common/common_appbar.dart';
import 'package:chat_demo/src/util/common/common_divider.dart';
import 'package:chat_demo/src/widget/container/search_container.dart';
import 'package:chat_demo/src/widget/container/user_message_container.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CommonAppbar(title: ConstValues.chats),
      body: Column(
        children: [
          SearchContainer(),
          CommonDivider(),
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => UserMessageContainer()))
        ],
      ),
    );
  }
}
