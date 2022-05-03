import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/free_magazine.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final freeMagazineProvider = StateProvider.autoDispose<FreeMagazine>((ref) {
  return FreeMagazine(
      firstImage: mockImageUrl,
      secondImage: mockImageUrl,
      firstArtistName: "吉岡聖恵",
      secondArtistName: "NOMELON NOLEMON",
      firstLink: mockLinkUrl,
      secondLink: mockLinkUrl,
      publisher: "Skream!",
      year: "2022",
      month: "1");
});
