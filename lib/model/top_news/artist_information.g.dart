// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistInformation _$$_ArtistInformationFromJson(Map<String, dynamic> json) =>
    _$_ArtistInformation(
      name: json['name'] as String,
      location:
          const LocationEnumConverter().fromJson(json['location'] as String?),
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_ArtistInformationToJson(
        _$_ArtistInformation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': const LocationEnumConverter().toJson(instance.location),
      'link': instance.link,
    };
