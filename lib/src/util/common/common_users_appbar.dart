import 'package:chat_demo/src/data/const/const_values.dart';
import 'package:chat_demo/src/util/common/common_avatar.dart';
import 'package:flutter/material.dart';

class CommonUsersAppbar extends StatelessWidget {
  const CommonUsersAppbar(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.colors});
  final String firstname;
  final String lastname;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        CommonAvatar(color: colors, firstName: firstname, lastName: lastname),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$firstname $lastname",
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
                fontWeight: FontWeight.w300,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
