import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/live_report.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final liveReportProvider = StateProvider.autoDispose<List<LiveReport>>((ref) {
  return [
    LiveReport(image: mockImageUrl, isFavorite: true, title: "灰色ロジック", date: DateTime(2022, 5, 1), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
    LiveReport(image: mockImageUrl, isFavorite: true, title: "灰色ロジック", date: DateTime(2022, 12, 9), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
    LiveReport(image: mockImageUrl, isFavorite: false, title: "灰色ロジック", date: DateTime(2022, 12, 17), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
    LiveReport(image: mockImageUrl, isFavorite: true, title: "灰色ロジック", date: DateTime(2022, 6, 17), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
    LiveReport(image: mockImageUrl, isFavorite: false, title: "灰色ロジック", date: DateTime(2022, 1, 7), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
    LiveReport(image: mockImageUrl, isFavorite: true, title: "灰色ロジック", date: DateTime(2022, 12, 17), placeName: "＠下北沢SHELTER", link: mockLinkUrl),
  ];
});
