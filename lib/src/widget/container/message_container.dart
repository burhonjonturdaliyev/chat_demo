import 'package:chat_demo/src/data/libruary/package_libruary.dart';
import 'package:chat_demo/src/data/logic/messaging/messaging_bloc.dart';
import 'package:chat_demo/src/util/button/send_button.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 100,
        padding: EdgeInsets.only(
          top: 14,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: theme.colorScheme.secondary,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FileAttachButton(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SendingMessageContainer(controller: controller),
              ),
            ),
            BlocBuilder<MessagingBloc, MessagingState>(
              builder: (context, state) {
                if (state is MessagingSendState) {
                  return SendButton(
                    controller: controller,
                  );
                } else {
                  return MicButton(
                    controller: controller,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
