
import 'package:chat_demo/src/data/libruary/package_libruary.dart';

class Providers {
  static final List<SingleChildWidget> providers = [
    BlocProvider(create: (context) => ThemeBloc()..add(ThemeAppStarted())),
  ];
}
