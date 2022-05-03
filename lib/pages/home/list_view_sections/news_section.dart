import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/news_list_item.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    Key? key,
    required this.title,
    required this.newsList,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final String title;
  final List<News> newsList;
  final Function(bool isFavorite, int index) tapBookMark;
  final Function(News news) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          HomePageSectionHeader(title: title),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(newsList[index]),
                child: NewsListItem(
                  data: newsList[index],
                  tapBookMark: (isFavorite) => tapBookMark(isFavorite, index),
                ),
              );
            },
            itemCount: newsList.length,
          ),
        ],
      ),
    );
  }
}
