import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_column.dart';

import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final artistColumnProvider = StateProvider.autoDispose<List<ArtistColumn>>((ref) {
  return [
    ArtistColumn(image: mockImageUrl, isFavorite: false, body: "2021年12月号掲載", link: mockLinkUrl),
    ArtistColumn(image: mockImageUrl, isFavorite: true, body: "2022年1月号掲載", link: mockLinkUrl),
    ArtistColumn(image: mockImageUrl, isFavorite: false, body: "2022年2月号掲載", link: mockLinkUrl),
    ArtistColumn(image: mockImageUrl, isFavorite: false, body: "2022年3月号掲載", link: mockLinkUrl),
    ArtistColumn(image: mockImageUrl, isFavorite: true, body: "2022年4月号掲載", link: mockLinkUrl),
  ];
});