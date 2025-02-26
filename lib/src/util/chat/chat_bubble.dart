import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  final bool isLast;
  final String? imagePath;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
    required this.isLast,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width * 0.7,
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: isLast ? 20 : 5),
          padding: EdgeInsets.only(
            top: imagePath != null ? 4 : 8,
            left: imagePath != null ? 4 : 10,
            right: imagePath != null ? 4 : 10,
          ),
          decoration: BoxDecoration(
            color:
                isMe ? theme.colorScheme.primary : theme.colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
              bottomLeft: Radius.circular(isMe ? 16 : (isLast ? 4 : 16)),
              bottomRight: Radius.circular(isMe ? (isLast ? 4 : 16) : 16),
            ),
          ),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Balandlikni faqat kerakligicha egallaydi
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imagePath != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(imagePath ?? ""),
                ),
              if (message.isNotEmpty) // Agar text bo‘lsa, uni joylash
                Padding(
                  padding: EdgeInsets.only(
                      left: 8.0, bottom: 8, top: imagePath != null ? 8 : 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      imagePath != null
                          ? Expanded(
                              child: Text(
                                "dwef wef",
                                style: TextStyle(
                                    color: theme.colorScheme.onSurface),
                              ),
                            )
                          : Flexible(
                              child: Text(
                                "dwef wef",
                                style: TextStyle(
                                    color: theme.colorScheme.onSurface),
                              ),
                            ),
                      const SizedBox(width: 8),
                      if (imagePath != null) Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                                color: theme.colorScheme.onSurface,
                                fontSize: 12),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.done_all,
                            size: 16,
                            color: theme.colorScheme.onSurface,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
