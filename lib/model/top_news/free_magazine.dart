import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_magazine.g.dart';
part 'free_magazine.freezed.dart';

@freezed
class FreeMagazine with _$FreeMagazine {
  factory FreeMagazine({
    required String firstImage,
    required String secondImage,
    required String firstArtistName,
    required String secondArtistName,
    required String firstLink,
    required String secondLink,
    required String publisher,
    required String year,
    required String month,
  }) = _FreeMagazine;

  factory FreeMagazine.fromJson(Map<String, dynamic> json) => _$FreeMagazineFromJson(json);
}