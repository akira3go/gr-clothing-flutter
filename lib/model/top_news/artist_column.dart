import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_column.g.dart';
part 'artist_column.freezed.dart';

@freezed
class ArtistColumn with _$ArtistColumn {
  factory ArtistColumn(
      {required String image,
      required bool isFavorite,
      required String body,
      required String link,}) = _ArtistColumn;

  factory ArtistColumn.fromJson(Map<String, dynamic> json) =>
      _$ArtistColumnFromJson(json);
}