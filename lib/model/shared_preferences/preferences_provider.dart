import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/shared_preferences/preferences.dart';

final preferencesProvider =
    StateNotifierProvider<PreferencesStateNotifier, Preferences>((ref) {
  return PreferencesStateNotifier(Preferences(
    isLoggedIn: PreferencesKey.isLoggedIn.prefValue,
  ));
});

class PreferencesStateNotifier extends StateNotifier<Preferences> {
  PreferencesStateNotifier(Preferences state) : super(state);

  set isLoggedIn(bool value) {
    setBool(PreferencesKey.isLoggedIn, value);
    state = state.copyWith(isLoggedIn: value);
  }

  void setBool(PreferencesKey key, bool value) async {
    await sharedPreferences.setBool(key.name, value);
  }
}
