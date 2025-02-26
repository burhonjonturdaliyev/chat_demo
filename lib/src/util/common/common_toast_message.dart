import 'package:chat_demo/src/data/libruary/package_libruary.dart';


class CommonToastMessage {
  final ThemeData theme;

  CommonToastMessage({required this.theme});

  void displayToast({required BuildContext context, String message = ''}) {
    FToast fToast = FToast();
    fToast
        .init(context); // Use the current context of a widget below MaterialApp

    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: theme.primaryColor,
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );

    fToast.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 3),
      gravity: ToastGravity.CENTER,
    );
  }
}
