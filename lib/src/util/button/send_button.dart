import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.paperplane,
            size: 22,
            color: theme.colorScheme.onSurface,
          )),
    );
  }
}
