import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/video_message.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/video_message_list_item.dart';

class VideoMessageSection extends StatelessWidget {
  const VideoMessageSection({
    Key? key,
    required this.videoMessageList,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<VideoMessage> videoMessageList;
  final Function(VideoMessage videoMessage, bool isFavorite) tapBookMark;
  final Function(VideoMessage videoMessage) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "動画メッセージ"),
        SizedBox(
          height: 160,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(videoMessageList[index]),
                child: VideoMessageListItem(
                  data: videoMessageList[index],
                  tapBookMark: tapBookMark,
                ),
              );
            },
            itemCount: videoMessageList.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
