import 'package:chat_demo/src/data/libruary/package_libruary.dart';
import 'package:chat_demo/src/data/logic/messaging/messaging_bloc.dart';

class Providers {
  static final List<SingleChildWidget> providers = [
    BlocProvider(create: (context) => ThemeBloc()..add(ThemeAppStarted())),
    BlocProvider(create: (context) => ChatBloc()..add(ChatFetchEvent())),
    BlocProvider(create: (context) => MessagingBloc()..add(MessagingMicEvent()))
  ];
}
