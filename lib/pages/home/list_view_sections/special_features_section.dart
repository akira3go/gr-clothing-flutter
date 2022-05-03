import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/special_feature.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/special_features_list_item.dart';

class SpecialFeaturesSection extends StatelessWidget {
  const SpecialFeaturesSection({
    Key? key,
    required this.specialFeatures,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<SpecialFeature> specialFeatures;
  final Function(SpecialFeature specialFeature, bool isFavorite) tapBookMark;
  final Function(SpecialFeature specialFeature) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "特集"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: specialFeatures.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => onTapItem(specialFeatures[index]),
                child: SpecialFeaturesListItem(
                  specialFeature: specialFeatures[index],
                  tapBookMark: tapBookMark,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
