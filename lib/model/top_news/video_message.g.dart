// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoMessage _$$_VideoMessageFromJson(Map<String, dynamic> json) =>
    _$_VideoMessage(
      image: json['image'] as String,
      isFavorite: json['isFavorite'] as bool,
      artistName: json['artistName'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_VideoMessageToJson(_$_VideoMessage instance) =>
    <String, dynamic>{
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'artistName': instance.artistName,
      'link': instance.link,
    };
