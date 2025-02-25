import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../function/theme/theme_function.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    on<ThemeAppStarted>(themeAppStarted);
    on<ThemeModeChanged>(themeModeChanged);
  }

  Future<void> themeAppStarted(
      ThemeAppStarted event, Emitter<ThemeState> emit) async {
    await ThemeFunction(emit: emit).mapThemeAppStarted();
  }

  Future<void> themeModeChanged(
      ThemeModeChanged event, Emitter<ThemeState> emit) async {
    await ThemeFunction(emit: emit).mapThemeModeChanged(event.themeMode);
  }
}
