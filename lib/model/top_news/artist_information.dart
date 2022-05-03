import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';

part 'artist_information.g.dart';
part 'artist_information.freezed.dart';

@freezed
class ArtistInformation with _$ArtistInformation {
  factory ArtistInformation(
      {required String name,
        @LocationEnumConverter() Location? location,
        required String link,}) = _ArtistInformation;

  factory ArtistInformation.fromJson(Map<String, dynamic> json) =>
      _$ArtistInformationFromJson(json);
}