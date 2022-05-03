// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistColumn _$$_ArtistColumnFromJson(Map<String, dynamic> json) =>
    _$_ArtistColumn(
      image: json['image'] as String,
      isFavorite: json['isFavorite'] as bool,
      body: json['body'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_ArtistColumnToJson(_$_ArtistColumn instance) =>
    <String, dynamic>{
      'image': instance.image,
      'isFavorite': instance.isFavorite,
      'body': instance.body,
      'link': instance.link,
    };
