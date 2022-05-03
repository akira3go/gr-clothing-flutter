// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disc_review_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscReviewItem _$$_DiscReviewItemFromJson(Map<String, dynamic> json) =>
    _$_DiscReviewItem(
      image: json['image'] as String,
      artistName: json['artistName'] as String,
      isFavorite: json['isFavorite'] as bool,
      name: json['name'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_DiscReviewItemToJson(_$_DiscReviewItem instance) =>
    <String, dynamic>{
      'image': instance.image,
      'artistName': instance.artistName,
      'isFavorite': instance.isFavorite,
      'name': instance.name,
      'link': instance.link,
    };
