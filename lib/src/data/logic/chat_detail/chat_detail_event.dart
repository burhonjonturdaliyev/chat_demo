part of 'chat_detail_bloc.dart';

@immutable
sealed class ChatDetailEvent {}

final class ChatDetailFetchEvent extends ChatDetailEvent {
  final int id;

  ChatDetailFetchEvent({required this.id});
}
