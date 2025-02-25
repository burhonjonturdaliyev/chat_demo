import 'package:chat_demo/src/data/const/const_values.dart';
import 'package:chat_demo/src/util/common/common_appbar.dart';
import 'package:chat_demo/src/util/common/common_avatar.dart';
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
        titles: Row(
          children: [
            CommonAvatar(
                color: widget.colors,
                firstName: widget.firstName,
                lastName: widget.lastName),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Виктор Власов",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: theme.colorScheme.onSurface,
                    fontSize: 15,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ConstValues.online,
                  style: TextStyle(
                    color: theme.colorScheme.onSurface,
                    fontSize: 12,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
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
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonAvatar(
                        color: widget.colors,
                        firstName: widget.firstName,
                        lastName: widget.lastName),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Виктор Власов",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 15,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Привет, как дела?",
                          style: TextStyle(
                            color: theme.colorScheme.onSurface,
                            fontSize: 12,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
