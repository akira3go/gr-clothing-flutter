import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/model/top_news/music_video.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/music_video_list_item.dart';

class MusicVideoSection extends StatelessWidget {
  const MusicVideoSection({
    Key? key,
    required this.musicVideoList,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<MusicVideo> musicVideoList;
  final Function(MusicVideo musicVideo, bool isFavorite) tapBookMark;
  final Function(MusicVideo musicVideo) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "MUSIC VIDEO"),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(musicVideoList[index]),
                child: MusicVideoListItem(
                  data: musicVideoList[index],
                  tapBookMark: tapBookMark,
                ),
              );
            },
            itemCount: musicVideoList.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
