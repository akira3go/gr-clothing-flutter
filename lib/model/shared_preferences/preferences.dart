import 'package:shared_preferences/shared_preferences.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences.freezed.dart';

late SharedPreferences sharedPreferences;

@freezed
class Preferences with _$Preferences {
  factory Preferences({
    required bool isLoggedIn,
  }) = _Preferences;
}

enum PreferencesKey {
  isLoggedIn,
}

extension PreferencesKeyExtension on PreferencesKey {
  bool get defaultBoolValue {
    switch (this) {
      case PreferencesKey.isLoggedIn:
        return false;
      default:
        return false;
    }
  }

  dynamic get prefValue {
    switch (this) {
      case PreferencesKey.isLoggedIn:
        return sharedPreferences.getBool(name) ?? defaultBoolValue;
    }
  }
}