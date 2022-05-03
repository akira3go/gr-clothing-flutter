import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_feature.g.dart';
part 'special_feature.freezed.dart';

@freezed
class SpecialFeature with _$SpecialFeature {
  factory SpecialFeature({
    required String image,
    required bool isFavorite,
    required String title,
    required String link,
  }) = _SpecialFeature;

  factory SpecialFeature.fromJson(Map<String, dynamic> json) => _$SpecialFeatureFromJson(json);
}