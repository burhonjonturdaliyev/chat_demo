part of 'chat_bloc.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatLoadingState extends ChatState {}

final class ChatSuccessState extends ChatState {
  final List<UsersListModel> model;

  ChatSuccessState({required this.model});
}

final class ChatEmptyState extends ChatState {}
