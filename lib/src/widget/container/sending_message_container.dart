import 'package:chat_demo/src/data/libruary/package_libruary.dart';
import 'package:chat_demo/src/data/logic/messaging/messaging_bloc.dart';

class SendingMessageContainer extends StatelessWidget {
  const SendingMessageContainer({super.key, required this.controller});
  final TextEditingController controller;

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
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.isNotEmpty) {
            context.read<MessagingBloc>().add(MessagingSendEvent());
          } else {
            context.read<MessagingBloc>().add(MessagingMicEvent());
          }
        },
        decoration: InputDecoration(
            border: InputBorder.none, hintText: ConstValues.message),
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
      ),
    );
  }
}
