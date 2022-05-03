// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disc_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscReview _$$_DiscReviewFromJson(Map<String, dynamic> json) =>
    _$_DiscReview(
      japanese: (json['japanese'] as List<dynamic>)
          .map((e) => DiscReviewItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      overseas: (json['overseas'] as List<dynamic>)
          .map((e) => DiscReviewItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiscReviewToJson(_$_DiscReview instance) =>
    <String, dynamic>{
      'japanese': instance.japanese,
      'overseas': instance.overseas,
    };
