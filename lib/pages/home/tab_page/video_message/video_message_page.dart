import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/video_message/video_message_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/video_message_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class VideoMessagePage extends ConsumerWidget {
  const VideoMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoMessages = ref.watch(videoMessageProvider);
    return Column(
      children: [
        const HomePageSectionHeader(title: "動画メッセージ"),
        Container(
          height: 160,
          padding: const EdgeInsets.only(top: 8),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return VideoMessageListItem(
                data: videoMessages[index],
                tapBookMark: (videoMessage, isFavorite) {},
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
