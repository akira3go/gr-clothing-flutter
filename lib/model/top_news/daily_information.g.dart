// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyInformation _$$_DailyInformationFromJson(Map<String, dynamic> json) =>
    _$_DailyInformation(
      date: DateTime.parse(json['date'] as String),
      information: (json['information'] as List<dynamic>)
          .map((e) => ArtistInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DailyInformationToJson(_$_DailyInformation instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'information': instance.information,
    };
