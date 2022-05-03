import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/access_ranking.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/model/top_news/ranking_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/ranking_list_item.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class AccessRankingSection extends ConsumerWidget {
  AccessRankingSection({
    Key? key,
    required this.title,
    required this.accessRanking,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final String title;
  final AccessRanking accessRanking;
  final Function(Location location, RankingItem item, bool isFavorite)
      tapBookMark;
  final Function(RankingItem item) onTapItem;

  final selectedLocationProvider =
      StateProvider.autoDispose<Location>((ref) => Location.Japanese);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = ref.watch(selectedLocationProvider);

    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          HomePageSectionHeader(title: title),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => ref
                        .read(selectedLocationProvider.notifier)
                        .state = Location.Japanese,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: selectedLocation == Location.Japanese
                            ? ColorName.japanese
                            : Colors.white,
                        border: Border.all(color: ColorName.japanese),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      child: Text(
                        Location.Japanese.name,
                        style: TextStyle(
                          color: selectedLocation == Location.Japanese
                              ? Colors.white
                              : ColorName.japanese,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ref.read(selectedLocationProvider.notifier).state =
                          Location.Overseas;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: selectedLocation == Location.Overseas
                            ? ColorName.overseas
                            : Colors.white,
                        border: Border.all(color: ColorName.overseas),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      child: Text(
                        Location.Overseas.name,
                        style: TextStyle(
                          color: selectedLocation == Location.Overseas
                              ? Colors.white
                              : ColorName.overseas,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: selectedLocation == Location.Japanese
                ? accessRanking.japanese.length
                : accessRanking.overseas.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              List<RankingItem> list = selectedLocation == Location.Japanese
                  ? accessRanking.japanese
                  : accessRanking.overseas;
              return GestureDetector(
                onTap: () => onTapItem(list[index]),
                child: RankingListItem(
                  ranking: index + 1,
                  item: list[index],
                  location: selectedLocation,
                  tapBookMark: (item, isFavorite) =>
                      tapBookMark(selectedLocation, item, isFavorite),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
