import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/disc_review/disc_review_page_view_model.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/disc_review_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class DiscReviewPage extends ConsumerWidget {
  const DiscReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discReview = ref.watch(discReviewProvider);
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
              return DiscReviewListItem(
                discReviewItem: discReview.japanese[index],
                tapBookMark: (discReview, isFavorite) {},
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
              return DiscReviewListItem(
                discReviewItem: discReview.overseas[index],
                tapBookMark: (discReview, isFavorite) {},
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
