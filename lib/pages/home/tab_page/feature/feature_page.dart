import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/feature/feature_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/special_features_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class SpecialFeaturePage extends ConsumerWidget {
  const SpecialFeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final specialFeature = ref.watch(spacialFeatureProvider);
    return Column(
      children: [
        const HomePageSectionHeader(title: "特集"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: specialFeature.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return SpecialFeaturesListItem(
                specialFeature: specialFeature[index],
                tapBookMark: (specialFeatures, isFavorite) {},
              );
            },
          ),
        ),
      ],
    );
  }
}
