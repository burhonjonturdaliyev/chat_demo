import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class SendingMessageContainer extends StatelessWidget {
  const SendingMessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 42,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [],
      ),
    );
  }
}
