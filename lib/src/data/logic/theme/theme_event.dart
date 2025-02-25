part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ThemeAppStarted extends ThemeEvent {}

class ThemeModeChanged extends ThemeEvent {
  final ThemeMode themeMode;

  ThemeModeChanged({required this.themeMode});
}
