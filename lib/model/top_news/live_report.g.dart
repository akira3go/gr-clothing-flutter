// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveReport _$$_LiveReportFromJson(Map<String, dynamic> json) =>
    _$_LiveReport(
      image: json['image'] as String,
      isFavorite: json['isFavorite'] as bool,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      placeName: json['placeName'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_LiveReportToJson(_$_LiveReport instance) =>
    <String, dynamic>{
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'placeName': instance.placeName,
      'link': instance.link,
    };
