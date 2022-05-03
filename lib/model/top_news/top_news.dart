import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/access_ranking.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review.dart';
import 'package:gr_clothing_flutter/model/top_news/free_magazine.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_column.dart';
import 'package:gr_clothing_flutter/model/top_news/interview.dart';
import 'package:gr_clothing_flutter/model/top_news/special_feature.dart';
import 'package:gr_clothing_flutter/model/top_news/music_video.dart';
import 'package:gr_clothing_flutter/model/top_news/top_image.dart';
import 'package:gr_clothing_flutter/model/top_news/video_message.dart';
import 'package:gr_clothing_flutter/model/top_news/live_report.dart';
import 'package:gr_clothing_flutter/model/top_news/daily_information.dart';

part 'top_news.g.dart';
part 'top_news.freezed.dart';

@freezed
class TopNews with _$TopNews {
  factory TopNews({
    required List<TopImage> topImages,
    required List<News> latestUpdateNews,
    required List<News> headlineNews,
    required AccessRanking accessRanking,
    required List<ArtistColumn> artistColumnList,
    required List<Interview> interviewList,
    required List<SpecialFeature> specialFeatures,
    required FreeMagazine freeMagazine,
    required List<MusicVideo> musicVideoList,
    required List<VideoMessage> videoMessages,
    required List<LiveReport> liveReports,
    required DiscReview discReview,
    required List<DailyInformation> liveInformation,
    required List<DailyInformation> releaseInformation,
  }) = _TopNews;

  factory TopNews.fromJson(Map<String, dynamic> json) =>
      _$TopNewsFromJson(json);
}

