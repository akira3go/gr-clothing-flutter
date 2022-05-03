import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review_item.dart';

part 'disc_review.g.dart';
part 'disc_review.freezed.dart';

@freezed
class DiscReview with _$DiscReview {
  factory DiscReview({
    required List<DiscReviewItem> japanese,
    required List<DiscReviewItem> overseas,
  }) = _DiscReview;

  factory DiscReview.fromJson(Map<String, dynamic> json) => _$DiscReviewFromJson(json);
}