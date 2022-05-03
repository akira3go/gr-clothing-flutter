// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MusicVideo _$$_MusicVideoFromJson(Map<String, dynamic> json) =>
    _$_MusicVideo(
      image: json['image'] as String,
      isFavorite: json['isFavorite'] as bool,
      title: json['title'] as String,
      playbackTime: json['playbackTime'] as String,
      playCount: json['playCount'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_MusicVideoToJson(_$_MusicVideo instance) =>
    <String, dynamic>{
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'title': instance.title,
      'playbackTime': instance.playbackTime,
      'playCount': instance.playCount,
      'link': instance.link,
    };
