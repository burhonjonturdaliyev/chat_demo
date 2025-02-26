import 'package:chat_demo/src/data/libruary/package_libruary.dart';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CommonAppbar(title: ConstValues.chats),
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.colorScheme.secondary,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled:
                true, // This allows the modal to resize when the keyboard appears
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom, // Adjusts for the keyboard
              ),
              child: UserCreateModal(),
            ),
          );
        },
        child: Icon(
          CupertinoIcons.add,
          color: theme.colorScheme.onSurface,
        ),
      ),
      body: Column(
        children: [
          SearchContainer(),
          CommonDivider(),
          Expanded(child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              if (state is ChatLoadingState) {
                return CircularProgressIndicator();
              } else if (state is ChatSuccessState) {
                return ListView.builder(
                    itemCount: state.model.length,
                    itemBuilder: (context, index) => UserMessageContainer(
                          firstName: state.model[index].firstname,
                          lastMessage: state.model[index].lastMessage ?? "",
                          lastName: state.model[index].lastname,
                          color: state.model[index].color,
                          time: DateFormat("hh:mm")
                              .format(state.model[index].time),
                        ));
              } else {
                return SizedBox();
              }
            },
          ))
        ],
      ),
    );
  }
}
