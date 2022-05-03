import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/artist_column/artist_column_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/artist_column_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class ArtistColumnPage extends ConsumerWidget {
  const ArtistColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final artistColumnList = ref.watch(artistColumnProvider);
    return Column(
      children: [
        const HomePageSectionHeader(title: "アーティストコラム"),
        Container(
          height: 160,
          padding: const EdgeInsets.only(bottom: 20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ArtistColumnListItem(
                data: artistColumnList[index],
                tapBookMark: (artistColumn, isFavorite) {},
              );
            },
            itemCount: artistColumnList.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
