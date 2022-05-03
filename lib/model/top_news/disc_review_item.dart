import 'package:freezed_annotation/freezed_annotation.dart';

part 'disc_review_item.g.dart';
part 'disc_review_item.freezed.dart';

@freezed
class DiscReviewItem with _$DiscReviewItem {
  factory DiscReviewItem({
    required String image,
    required String artistName,
    required bool isFavorite,
    required String name,
    required String link,
  }) = _DiscReviewItem;

  factory DiscReviewItem.fromJson(Map<String, dynamic> json) => _$DiscReviewItemFromJson(json);
}