import 'dart:developer';
import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  fetch() async {
    final temp = await AppDatabase().getAllUsers();
    log(temp.length.toString());
  }

  @override
  void initState() {
    fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CommonAppbar(title: ConstValues.chats),
      body: Column(
        children: [
          SearchContainer(),
          CommonDivider(),
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => UserMessageContainer()))
        ],
      ),
    );
  }
}
