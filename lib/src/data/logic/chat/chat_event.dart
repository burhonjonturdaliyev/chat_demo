part of 'chat_bloc.dart';

@immutable
sealed class ChatEvent {}

final class ChatFetchEvent extends ChatEvent {}

final class ChatUpdateEvent extends ChatEvent {
  final int id;
  final String message;
  final bool isMe;

  ChatUpdateEvent(
      {required this.id, required this.message, required this.isMe});
}
