import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';

part 'news.g.dart';
part 'news.freezed.dart';

@freezed
class News with _$News {
  factory News({
    required String image,
    @CategoryEnumConverter() Category? category,
    @LocationEnumConverter() Location? location,
    required DateTime dateTime,
    required bool isFavorite,
    required String body,
    required String link,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}