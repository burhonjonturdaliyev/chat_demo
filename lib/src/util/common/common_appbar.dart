import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? istrue;
  final List<Widget>? action;
  final bool? isDrawer;
  final Function()? onPressed;
  const CommonAppbar(
      {super.key,
      required this.title,
      this.istrue,
      this.onPressed,
      this.isDrawer,
      this.action});
  const CommonAppbar.simple({super.key, required this.title})
      : istrue = null,
        action = null,
        isDrawer = null,
        onPressed = null;
  const CommonAppbar.drawer({super.key, required this.title})
      : istrue = null,
        action = null,
        isDrawer = true,
        onPressed = null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      title: Text(
        title,
        style: TextStyle(
            color: theme.colorScheme.onSurface,
            fontSize: 26,
            fontFamily: "Gilroy",
            fontWeight: FontWeight.bold),
      ),
      actions: action ?? [],
      foregroundColor: theme.colorScheme.onSurface,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
