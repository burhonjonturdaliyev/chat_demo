import 'package:bloc/bloc.dart';
import 'package:chat_demo/src/data/logic/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeFunction {
  final Emitter<ThemeState> emit;

  ThemeFunction({required this.emit});

  Future<void> mapThemeAppStarted() async {
    final themeMode = await getThemeMode();
    emit(ThemeState(themeMode: themeMode));
  }

  Future<void> mapThemeModeChanged(ThemeMode themeMode) async {
    await saveThemeMode(themeMode);
    emit(ThemeState(themeMode: themeMode));
  }

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('theme', themeMode.name);
  }

  Future<ThemeMode> getThemeMode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final String? theme = sharedPreferences.getString('theme');
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
