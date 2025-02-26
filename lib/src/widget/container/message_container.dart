import 'package:chat_demo/src/util/button/file_attach_button.dart';
import 'package:chat_demo/src/util/button/mic_button.dart';
import 'package:chat_demo/src/widget/container/sending_message_container.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 100,
      padding: EdgeInsets.only(
        top: 14,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.secondary,
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FileAttachButton(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SendingMessageContainer(),
            ),
          ),
          MicButton()
        ],
      ),
    );
  }
}
