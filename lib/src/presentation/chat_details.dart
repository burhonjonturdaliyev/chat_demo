import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails(
      {super.key,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.colors});
  final int id;
  final String firstName;
  final String lastName;
  final Color colors;

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  final List<Map<String, dynamic>> messages = [
    {
      "text": "Hello",
      "time": "20:00",
      "isMe": true,
      "imagePath": "assets/qiz.jpeg",
    },
    {"text": "How are you?", "time": "20:01", "isMe": true},
    {
      "text": "I'm fine!",
      "time": "20:02",
      "isMe": false,
    },
    {
      "text": "Good to hear!",
      "time": "20:03",
      "isMe": true,
      "imagePath": "assets/qiz.jpeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: CommonAppbar.withWidget(
          titles: CommonUsersAppbar(
              firstname: widget.firstName,
              lastname: widget.lastName,
              colors: widget.colors)),
      bottomNavigationBar: MessageContainer(),
      body: Column(
        children: [
          CommonDivider(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/back.jpg"),
                      fit: BoxFit.fitWidth)),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final bool isMe = messages[index]["isMe"];
                      final bool isLast = index == messages.length - 1 ||
                          messages[index + 1]["isMe"] != isMe;

                      return ChatBubble(
                        message: messages[index]["text"],
                        time: messages[index]["time"],
                        imagePath: messages[index]["imagePath"],
                        isMe: isMe,
                        isLast: isLast, // Only last in group gets a tail
                      );
                    },
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
