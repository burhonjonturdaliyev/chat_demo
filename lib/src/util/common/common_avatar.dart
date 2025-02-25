import 'package:flutter/material.dart';

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
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Center(
        child: Text(
          '${firstName[0].toUpperCase()}${lastName[0].toUpperCase()}',
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
