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
  TextColumn get lastMessage => text().withLength(min: 1, max: 1000)();
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

  // Insert a user
  Future<int> insertUser(UsersCompanion user) => into(users).insert(user);

  // Insert a message
  Future<int> insertMessage(MessagesCompanion message) =>
      into(messages).insert(message);

  // Fetch all users
  Future<List<User>> getAllUsers() => select(users).get();

  // Fetch messages for a specific user
  Future<List<Message>> getMessagesForUser(int userId) =>
      (select(messages)..where((msg) => msg.userId.equals(userId))).get();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'chat_app.sqlite'));
    return NativeDatabase(file);
  });
}
