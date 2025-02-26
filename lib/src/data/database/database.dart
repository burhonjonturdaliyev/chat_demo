import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstname => text().withLength(min: 1, max: 50)();
  TextColumn get lastname => text().withLength(min: 1, max: 50)();
  TextColumn get lastMessage => text().nullable()(); // Nullable for no message
  DateTimeColumn get timestamp =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

@DataClassName('Message')
class Messages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId =>
      integer().customConstraint('NOT NULL REFERENCES users(id)')();
  BoolColumn get isMe => boolean()();
  TextColumn get content => text().nullable()(); // Nullable for image messages
  TextColumn get photoPath => text().nullable()(); // Nullable for text messages
  DateTimeColumn get timestamp =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

@DriftDatabase(tables: [Users, Messages])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> insertUser(UsersCompanion user) => into(users).insert(user);

  Future<int> insertMessage(MessagesCompanion message) =>
      into(messages).insert(message);

  Future<List<User>> getAllUsers() => select(users).get();

  Future<List<Message>> getMessagesForUser(int userId) =>
      (select(messages)..where((msg) => msg.userId.equals(userId))).get();

  Future<int> deleteUser(int id) {
    return (delete(users)..where((user) => user.id.equals(id))).go();
  }

  Future<void> deleteUserWithMessages(int userId) async {
    await (delete(messages)..where((msg) => msg.userId.equals(userId))).go();
    await deleteUser(userId);
  }

  Future<bool> updateUser(int id, String firstname, String lastname) async {
    final updatedCount = await (update(users)
          ..where((user) => user.id.equals(id)))
        .write(UsersCompanion(
      firstname: Value(firstname),
      lastname: Value(lastname),
    ));
    return updatedCount > 0;
  }

  Future<int> deleteMessage(int messageId) {
    return (delete(messages)..where((msg) => msg.id.equals(messageId))).go();
  }

  Future<bool> updateMessage(int messageId,
      {String? content, String? photoPath}) async {
    final updatedCount = await (update(messages)
          ..where((msg) => msg.id.equals(messageId)))
        .write(MessagesCompanion(
      content: content != null ? Value(content) : const Value.absent(),
      photoPath: photoPath != null ? Value(photoPath) : const Value.absent(),
    ));
    return updatedCount > 0;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'chat_app.sqlite'));
    return NativeDatabase(file);
  });
}
