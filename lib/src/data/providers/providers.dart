import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../logic/theme/theme_bloc.dart';

class Providers {
  static final List<SingleChildWidget> providers = [
    BlocProvider(create: (context) => ThemeBloc()..add(ThemeAppStarted())),
  ];
}
