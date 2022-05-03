import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_column.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/artist_column_list_item.dart';

class ArtistColumnSection extends StatelessWidget {
  const ArtistColumnSection({
    Key? key,
    required this.artistColumnList,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<ArtistColumn> artistColumnList;
  final Function(ArtistColumn artistColumn, bool isFavorite) tapBookMark;
  final Function(ArtistColumn artistColumn) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "アーティストコラム"),
        Container(
          height: 160,
          padding: const EdgeInsets.only(bottom: 20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(artistColumnList[index]),
                child: ArtistColumnListItem(
                  data: artistColumnList[index],
                  tapBookMark: tapBookMark,
                ),
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
