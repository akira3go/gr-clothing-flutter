import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/disc_review_list_item.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class DiscReviewSection extends StatelessWidget {
  const DiscReviewSection({
    Key? key,
    required this.discReview,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final DiscReview discReview;
  final Function(DiscReviewItem discReviewItem, bool isFavorite) tapBookMark;
  final Function(DiscReviewItem discReviewItem) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomePageSectionHeader(title: "ディスクレビュー"),
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 8, right: 8),
          child: Text(
            "Japanese",
            style: TextStyle(color: ColorName.japanese),
          ),
        ),
        SizedBox(
          height: 225,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(discReview.japanese[index]),
                child: DiscReviewListItem(
                  discReviewItem: discReview.japanese[index],
                  tapBookMark: tapBookMark,
                ),
              );
            },
            itemCount: discReview.japanese.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "Overseas",
            style: TextStyle(color: ColorName.overseas),
          ),
        ),
        SizedBox(
          height: 225,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(discReview.overseas[index]),
                child: DiscReviewListItem(
                  discReviewItem: discReview.overseas[index],
                  tapBookMark: tapBookMark,
                ),
              );
            },
            itemCount: discReview.overseas.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
