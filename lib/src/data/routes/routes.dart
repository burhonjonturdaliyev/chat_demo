import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class RouteNames {
  static const String chat = '/chat';
  static const String chatDetail = '/chatDetail';
}

class Routes {
  static final Map<String, WidgetBuilder> baseRoutes = {
    RouteNames.chat: (context) => const Chat(),
    RouteNames.chatDetail: (context) {
      final arg =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      return ChatDetails(
        id: arg['id'],
        firstName: arg['firstName'],
        lastName: arg['lastName'],
        colors: arg['colors'],
      );
    },
  };
}
