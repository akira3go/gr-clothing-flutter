import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_item.g.dart';
part 'ranking_item.freezed.dart';

@freezed
class RankingItem with _$RankingItem {
  factory RankingItem({required String body, required bool isFavorite, required String link,}) =
      _RankingItem;

  factory RankingItem.fromJson(Map<String, dynamic> json) =>
      _$RankingItemFromJson(json);
}