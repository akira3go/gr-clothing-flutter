import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/special_feature.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final specialProvider = StateProvider.autoDispose<List<SpecialFeature>>((ref) {
  return [
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "アルカラ", link: mockLinkUrl),
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "BRIDEAR", link: mockLinkUrl),
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "FATE GEAR", link: mockLinkUrl),
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "ああああああ", link: mockLinkUrl),
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "生牡蠣いもこ（神使轟く、激情のごとく。）長いーーーーーーーー", link: mockLinkUrl),
    SpecialFeature(image: mockImageUrl, isFavorite: false, title: "え", link: mockLinkUrl),
  ];
});