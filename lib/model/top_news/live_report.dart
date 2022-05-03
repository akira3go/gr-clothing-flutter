import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_report.g.dart';
part 'live_report.freezed.dart';

@freezed
class LiveReport with _$LiveReport {
  factory LiveReport({
    required String image,
    required bool isFavorite,
    required String title,
    required DateTime date,
    required String placeName,
    required String link,
  }) = _LiveReport;

  factory LiveReport.fromJson(Map<String, dynamic> json) => _$LiveReportFromJson(json);
}