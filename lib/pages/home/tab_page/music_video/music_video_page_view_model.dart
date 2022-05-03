import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/music_video.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final musicVideoProvider = StateProvider.autoDispose<List<MusicVideo>>((ref) {
  return [
    MusicVideo(image: mockImageUrl, isFavorite: true, title: "イヴドット", playbackTime: "02:49", playCount: "5,737", link: mockLinkUrl),
    MusicVideo(image: mockImageUrl, isFavorite: true, title: "イヴドット", playbackTime: "02:49", playCount: "5,737", link: mockLinkUrl),
    MusicVideo(image: mockImageUrl, isFavorite: false, title: "イヴドット", playbackTime: "02:49", playCount: "5,737", link: mockLinkUrl),
    MusicVideo(image: mockImageUrl, isFavorite: true, title: "イヴドット", playbackTime: "02:49", playCount: "5,737", link: mockLinkUrl),
  ];
});