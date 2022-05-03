import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/video_message.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final videoMessageProvider = StateProvider.autoDispose<List<VideoMessage>>((ref) {
  return [
    VideoMessage(image: mockImageUrl, isFavorite: true, artistName: "NOMELON NOLEMON", link: mockLinkUrl),
    VideoMessage(image: mockImageUrl, isFavorite: true, artistName: "吉岡聖恵", link: mockLinkUrl),
    VideoMessage(image: mockImageUrl, isFavorite: true, artistName: "吉岡聖恵", link: mockLinkUrl),
    VideoMessage(image: mockImageUrl, isFavorite: true, artistName: "NOMELON NOLEMON", link: mockLinkUrl),
    VideoMessage(image: mockImageUrl, isFavorite: true, artistName: "吉岡聖恵", link: mockLinkUrl),
  ];
});