part of 'messaging_bloc.dart';

@immutable
sealed class MessagingState {}

final class MessagingInitial extends MessagingState {}

final class MessagingMicState extends MessagingState {}

final class MessagingSendState extends MessagingState {}
