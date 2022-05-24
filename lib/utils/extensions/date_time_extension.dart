import 'package:gr_clothing_flutter/utils/extensions/int_extension.dart';

extension DateTimeExtension on DateTime {
  String get date {
    return "$year.${month.padLeft02String}.${day.padLeft02String}";
  }

  String get dateHour {
    return "$date ${hour.padLeft02String}:${minute.padLeft02String}";
  }
}
