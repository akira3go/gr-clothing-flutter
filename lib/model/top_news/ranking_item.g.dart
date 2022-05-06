// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RankingItem _$$_RankingItemFromJson(Map<String, dynamic> json) =>
    _$_RankingItem(
      body: json['body'] as String,
      link: json['link'] as String,
      isFavorite: json['isFavorite'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_RankingItemToJson(_$_RankingItem instance) =>
    <String, dynamic>{
      'body': instance.body,
      'link': instance.link,
      'isFavorite': instance.isFavorite,
      'image': instance.image,
    };
