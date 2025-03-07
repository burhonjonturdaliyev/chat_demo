import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class CommonAvatar extends StatelessWidget {
  const CommonAvatar(
      {super.key,
      required this.color,
      required this.firstName,
      required this.lastName});
  final Color color;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    print(firstName);
    print(lastName);
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: Text(
          '${firstName.isNotEmpty ? firstName[0].toUpperCase() : ""}${lastName.isNotEmpty ? lastName[0].toUpperCase() : ""}',
          style: TextStyle(
              fontFamily: "GilroyBold",
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24),
        ),
      ),
    );
  }
}
