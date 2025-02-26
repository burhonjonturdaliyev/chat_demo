import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class UserMessageContainer extends StatelessWidget {
  const UserMessageContainer(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.lastMessage,
      required this.color,
      required this.time});
  final String firstName;
  final String lastName;
  final String lastMessage;
  final Color color;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.chatDetail, arguments: {
          'id': 1,
          'firstName': firstName,
          'lastName': lastName,
          'colors': color,
        });
      },
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
                color: color, firstName: firstName, lastName: lastMessage),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              width: width * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$firstName $lastName",
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
                    lastMessage,
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
                  time,
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
