import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_information.dart';

part 'daily_information.g.dart';
part 'daily_information.freezed.dart';

@freezed
class DailyInformation with _$DailyInformation {
  factory DailyInformation(
      {required DateTime date,
        required List<ArtistInformation> information,}) = _DailyInformation;

  factory DailyInformation.fromJson(Map<String, dynamic> json) =>
      _$DailyInformationFromJson(json);
}