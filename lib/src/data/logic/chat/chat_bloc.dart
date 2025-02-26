import 'package:chat_demo/src/data/libruary/package_libruary.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<ChatFetchEvent>(chatFetchEvent);
    on<ChatUpdateEvent>(chatUpdateEvent);
    on<ChatCreateEvent>(chatCreateEvent);
  }

  FutureOr chatFetchEvent(ChatFetchEvent event, Emitter<ChatState> emit) async {
    await ChatFunction(emit: emit).fetch();
  }

  FutureOr chatUpdateEvent(ChatUpdateEvent event, Emitter<ChatState> emit) {}

  FutureOr chatCreateEvent(
      ChatCreateEvent event, Emitter<ChatState> emit) async {
    await ChatFunction(emit: emit).create(
        firstname: event.firstname,
        lastname: event.lastname,
        lastMessage: event.lastMessage,
        time: event.time);
  }
}
