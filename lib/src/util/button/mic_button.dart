import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MicButton extends StatelessWidget {
  const MicButton({super.key});

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
            CupertinoIcons.mic,
            size: 24,
            color: theme.colorScheme.onSurface,
          )),
    );
  }
}
