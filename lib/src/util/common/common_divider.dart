import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 1,
      width: double.infinity,
      margin: EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
      ),
    );
  }
}
