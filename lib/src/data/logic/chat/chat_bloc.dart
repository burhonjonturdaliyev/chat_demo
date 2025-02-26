import 'package:chat_demo/src/data/libruary/package_libruary.dart';

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
