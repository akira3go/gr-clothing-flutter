import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final Preferences preferences;

class Preferences {
  const Preferences(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  static Future<void> createInstance() async {
    preferences = Preferences(await SharedPreferences.getInstance());
  }

  List<String> get acceptUrlPaths {
    const key = PreferencesKey.acceptUrlPaths;
    final urlPaths = _sharedPreferences.getStringList(key.name);
    if (urlPaths == null) {
      _sharedPreferences.setStringList(key.name, _acceptUrlsInitialValues);
      return _acceptUrlsInitialValues;
    }
    return urlPaths;
  }

  DateTime? get updateDateOfAcceptPaths {
    const key = PreferencesKey.updateDateOfAcceptPaths;
    final updateDate = _sharedPreferences.getString(key.name);
    if (updateDate == null) {
      return null;
    }
    return DateTime.parse(updateDate);
  }

  // 仕様：一日一回のみ更新する
  Future<void> updateAcceptUrlPaths(List<String> list) async {
    final now = DateTime.now();
    final updateDate = updateDateOfAcceptPaths;
    if (updateDate == null ||
        now.day != updateDate.day ||
        now.month != updateDate.month ||
        now.year != updateDate.year) {
      await _sharedPreferences.setStringList(
        PreferencesKey.acceptUrlPaths.name,
        list,
      );
      await _setUpdateDate(now);
    }
  }

  Future<void> _setUpdateDate(DateTime date) async {
    final value = DateFormat('yyyy-MM-dd').format(date);
    await _sharedPreferences.setString(
      PreferencesKey.updateDateOfAcceptPaths.name,
      value,
    );
  }

  List<String> get _acceptUrlsInitialValues {
    return [
      "connect.facebook.net",
      "www.facebook.com/plugins/",
      "www.facebook.com/login/",
      "platform.twitter.com",
      "syndication.twitter.com",
      "www.youtube.com/embed/",
      "gekirock.com",
      "skream.jp",
      "69hf.tokyo",
      "bar-rockaholic.jp",
      "liveholic.jp",
      "rock-fashion.jugem.jp",
      "shop.gekirock.com",
      "mobile.twitter.com"
    ];
  }
}

enum PreferencesKey {
  acceptUrlPaths,
  updateDateOfAcceptPaths,
}
