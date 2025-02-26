import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_demo/src/data/model/users/users_list_model.dart';
import 'package:meta/meta.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<ChatFetchEvent>(chatFetchEvent);
    on<ChatUpdateEvent>(chatUpdateEvent);
  }

  FutureOr chatFetchEvent(ChatFetchEvent event, Emitter<ChatState> emit) {}
  FutureOr chatUpdateEvent(ChatUpdateEvent event, Emitter<ChatState> emit) {}
}
