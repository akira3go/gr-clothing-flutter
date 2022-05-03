import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/ranking_item.dart';

part 'access_ranking.g.dart';
part 'access_ranking.freezed.dart';

@freezed
class AccessRanking with _$AccessRanking {
  factory AccessRanking(
      {required List<RankingItem> japanese,
      required List<RankingItem> overseas}) = _AccessRanking;

  factory AccessRanking.fromJson(Map<String, dynamic> json) =>
      _$AccessRankingFromJson(json);
}