// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RankingItem _$$_RankingItemFromJson(Map<String, dynamic> json) =>
    _$_RankingItem(
      body: json['body'] as String,
      isFavorite: json['isFavorite'] as bool,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_RankingItemToJson(_$_RankingItem instance) =>
    <String, dynamic>{
      'body': instance.body,
      'isFavorite': instance.isFavorite,
      'link': instance.link,
    };
