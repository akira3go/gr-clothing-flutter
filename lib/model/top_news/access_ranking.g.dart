// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessRanking _$$_AccessRankingFromJson(Map<String, dynamic> json) =>
    _$_AccessRanking(
      japanese: (json['japanese'] as List<dynamic>)
          .map((e) => RankingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      overseas: (json['overseas'] as List<dynamic>)
          .map((e) => RankingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccessRankingToJson(_$_AccessRanking instance) =>
    <String, dynamic>{
      'japanese': instance.japanese,
      'overseas': instance.overseas,
    };
