import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final newsProvider = StateProvider.autoDispose<List<News>>((ref) {
  return [
    News(image: mockImageUrl,
        category: Category.artist,
        location: Location.Japanese, dateTime: DateTime(2022, 4, 1, 1, 0), isFavorite: true, body: "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア", link: mockLinkUrl),
    News(image: mockImageUrl,
        category: Category.artist,
        location: Location.Overseas, dateTime: DateTime(2022, 4, 10, 20, 10), isFavorite: false, body: "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア", link: mockLinkUrl),
    News(image: mockImageUrl,
        category: Category.artist,
        location: Location.Overseas, dateTime: DateTime(2022, 4, 13, 5, 0), isFavorite: false, body: "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア", link: mockLinkUrl),
    News(image: mockImageUrl,
        category: Category.artist,
        location: Location.Japanese, dateTime: DateTime(2022, 12, 25, 0, 0), isFavorite: true, body: "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア", link: mockLinkUrl),
  ];
});