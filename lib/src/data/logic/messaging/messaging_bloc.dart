import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  MessagingBloc() : super(MessagingInitial()) {
    on<MessagingMicEvent>(messagingMicEvent);
    on<MessagingSendEvent>(messagingSendEvent);
  }

  FutureOr messagingMicEvent(
      MessagingMicEvent event, Emitter<MessagingState> emit) {
    emit(MessagingMicState());
  }

  FutureOr messagingSendEvent(
      MessagingSendEvent event, Emitter<MessagingState> emit) {
    emit(MessagingSendState());
  }
}
