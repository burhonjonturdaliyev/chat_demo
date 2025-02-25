import 'package:chat_demo/src/data/const/const_values.dart';
import 'package:chat_demo/src/util/common/common_appbar.dart';
import 'package:chat_demo/src/widget/container/search_container.dart';
import 'package:chat_demo/src/widget/container/user_message_container.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CommonAppbar(title: ConstValues.chats),
      body: Column(
        children: [
          SearchContainer(),
          Container(
            height: 1,
            width: double.infinity,
            margin: EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondary,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => UserMessageContainer(),
          ))
        ],
      ),
    );
  }
}
