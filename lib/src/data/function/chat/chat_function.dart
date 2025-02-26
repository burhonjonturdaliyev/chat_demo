import 'dart:math';

import 'package:chat_demo/src/data/libruary/package_libruary.dart';
import 'package:drift/drift.dart';

class ChatFunction {
  final Emitter<ChatState> emit;

  ChatFunction({required this.emit});

  Future fetch() async {
    final temp = await AppDatabase().getAllUsers();
    final List<Color> userColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.pink,
      Colors.indigo,
      Colors.amber,
      Colors.cyan,
    ];
    if (temp.isEmpty) {
      emit(ChatEmptyState());
    } else {
      final model = temp.map((e) {
        return UsersListModel(
            firstname: e.firstname,
            lastname: e.lastname,
            lastMessage: e.lastMessage,
            isMe: e.id == -1,
            time: e.timestamp,
            color: getRandomColor(userColors));
      }).toList();
      emit(ChatSuccessState(model: model));
    }
  }

  Future create(
      {required String firstname,
      required String lastname,
      required String? lastMessage,
      required DateTime? time}) async {
    final database = AppDatabase();
    await database.insertUser(UsersCompanion(
      firstname: Value(firstname),
      lastname: Value(lastname),
      lastMessage: Value("lastMessage"),
      timestamp: Value(DateTime.now()),
    ));
    await fetch();
  }

  Color getRandomColor(List<Color> userColors) {
    final random = Random();
    return userColors[random.nextInt(userColors.length)];
  }
}
