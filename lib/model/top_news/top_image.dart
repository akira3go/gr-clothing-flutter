import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_image.g.dart';
part 'top_image.freezed.dart';

@freezed
class TopImage with _$TopImage {
  factory TopImage({required String image, required String link}) =
  _TopImage;

  factory TopImage.fromJson(Map<String, dynamic> json) =>
      _$TopImageFromJson(json);
}