part of 'messaging_bloc.dart';

@immutable
sealed class MessagingEvent {}

final class MessagingMicEvent extends MessagingEvent {}

final class MessagingSendEvent extends MessagingEvent {}
