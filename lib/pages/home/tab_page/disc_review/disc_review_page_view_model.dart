import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review_item.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';

final discReviewProvider = StateProvider.autoDispose<DiscReview>((ref) {
  return DiscReview(
      japanese: [
        DiscReviewItem(image: mockImageUrl, artistName: "UVERworld", isFavorite: true, name: "30", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "UVERworld", isFavorite: false, name: "30", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "UVERworld", isFavorite: true, name: "30", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "UVERworld", isFavorite: true, name: "30", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "UVERworld", isFavorite: true, name: "30", link: mockLinkUrl),
      ],
      overseas: [
        DiscReviewItem(image: mockImageUrl, artistName: "BETWEEN YOU & ME", isFavorite: true, name: "Armageddon", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "BETWEEN YOU & ME", isFavorite: true, name: "Armageddon", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "BETWEEN YOU & ME", isFavorite: true, name: "Armageddon", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "BETWEEN YOU & ME", isFavorite: true, name: "Armageddon", link: mockLinkUrl),
        DiscReviewItem(image: mockImageUrl, artistName: "BETWEEN YOU & ME", isFavorite: true, name: "Armageddon", link: mockLinkUrl),
      ]
  );
});