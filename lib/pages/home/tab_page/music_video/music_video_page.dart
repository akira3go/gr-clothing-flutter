import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/music_video/music_video_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/music_video_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class MusicVideoPage extends ConsumerWidget {
  const MusicVideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoMessages = ref.watch(musicVideoProvider);
    return Column(
      children: [
        const HomePageSectionHeader(title: "MUSIC VIDEO"),
        Container(
          height: 200,
          padding: const EdgeInsets.only(top: 8),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MusicVideoListItem(
                data: videoMessages[index],
                tapBookMark: (musicVideo, isFavorite) {},
              );
            },
            itemCount: videoMessages.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
