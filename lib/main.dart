import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/data/const/const_values.dart';
import 'src/data/logic/theme/theme_bloc.dart';
import 'src/data/providers/providers.dart';
import 'src/data/routes/routes.dart';
import 'theme/theme.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: Providers.providers,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: ConstValues.appName,
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
            navigatorKey: navigatorKey,
            routes: Routes.baseRoutes,
            initialRoute: RouteNames.chat,
          );
        },
      ),
    );
  }
}
