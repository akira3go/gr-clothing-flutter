// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopNews _$$_TopNewsFromJson(Map<String, dynamic> json) => _$_TopNews(
      topImages: (json['topImages'] as List<dynamic>)
          .map((e) => TopImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestUpdateNews: (json['latestUpdateNews'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      headlineNews: (json['headlineNews'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      accessRanking:
          AccessRanking.fromJson(json['accessRanking'] as Map<String, dynamic>),
      artistColumnList: (json['artistColumnList'] as List<dynamic>)
          .map((e) => ArtistColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
      interviewList: (json['interviewList'] as List<dynamic>)
          .map((e) => Interview.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialFeatures: (json['specialFeatures'] as List<dynamic>)
          .map((e) => SpecialFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      freeMagazine:
          FreeMagazine.fromJson(json['freeMagazine'] as Map<String, dynamic>),
      musicVideoList: (json['musicVideoList'] as List<dynamic>)
          .map((e) => MusicVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoMessages: (json['videoMessages'] as List<dynamic>)
          .map((e) => VideoMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      liveReports: (json['liveReports'] as List<dynamic>)
          .map((e) => LiveReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      discReview:
          DiscReview.fromJson(json['discReview'] as Map<String, dynamic>),
      liveInformation: (json['liveInformation'] as List<dynamic>)
          .map((e) => DailyInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseInformation: (json['releaseInformation'] as List<dynamic>)
          .map((e) => DailyInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopNewsToJson(_$_TopNews instance) =>
    <String, dynamic>{
      'topImages': instance.topImages,
      'latestUpdateNews': instance.latestUpdateNews,
      'headlineNews': instance.headlineNews,
      'accessRanking': instance.accessRanking,
      'artistColumnList': instance.artistColumnList,
      'interviewList': instance.interviewList,
      'specialFeatures': instance.specialFeatures,
      'freeMagazine': instance.freeMagazine,
      'musicVideoList': instance.musicVideoList,
      'videoMessages': instance.videoMessages,
      'liveReports': instance.liveReports,
      'discReview': instance.discReview,
      'liveInformation': instance.liveInformation,
      'releaseInformation': instance.releaseInformation,
    };
