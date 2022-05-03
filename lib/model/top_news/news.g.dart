// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      image: json['image'] as String,
      category:
          const CategoryEnumConverter().fromJson(json['category'] as String?),
      location:
          const LocationEnumConverter().fromJson(json['location'] as String?),
      dateTime: DateTime.parse(json['dateTime'] as String),
      isFavorite: json['isFavorite'] as bool,
      body: json['body'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'image': instance.image,
      'category': const CategoryEnumConverter().toJson(instance.category),
      'location': const LocationEnumConverter().toJson(instance.location),
      'dateTime': instance.dateTime.toIso8601String(),
      'isFavorite': instance.isFavorite,
      'body': instance.body,
      'link': instance.link,
    };
