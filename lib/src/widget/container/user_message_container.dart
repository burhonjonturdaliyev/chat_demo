import 'package:chat_demo/src/util/common/common_avatar.dart';
import 'package:flutter/material.dart';

class UserMessageContainer extends StatelessWidget {
  const UserMessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 12),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border(
            bottom: BorderSide(
              color: theme.colorScheme.secondary,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            CommonAvatar(
                color: Colors.red, firstName: "Виктор", lastName: "Власов"),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              width: width * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Виктор Власов",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                      fontSize: 16,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Я готов",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "12:00",
                  style: TextStyle(
                    color: theme.colorScheme.onSurface,
                    fontSize: 12,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
