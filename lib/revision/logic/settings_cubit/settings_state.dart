part of 'settings_cubit.dart';

abstract class SettingsState {}

class SettingsInitial extends SettingsState {}

class SettingsLoaded extends SettingsState {
  final String? username;
  SettingsLoaded(this.username);
}

class SettingsError extends SettingsState {
  final String message;
  SettingsError(this.message);
}
