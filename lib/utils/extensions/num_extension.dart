import 'package:intl/intl.dart';

extension NumExtension on num {
  String get toPrice {
    final result = NumberFormat("#,###").format(this);
    return "¥$result";
  }

  String get toJapanesePrice {
    final result = NumberFormat("#,###").format(this);
    return "$result 円";
  }
}
