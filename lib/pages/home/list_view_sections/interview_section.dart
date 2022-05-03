import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/interview.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/interview_list_item.dart';

class InterviewSection extends StatelessWidget {
  const InterviewSection({
    Key? key,
    required this.interviews,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<Interview> interviews;
  final Function(Interview interview, bool isFavorite) tapBookMark;
  final Function(Interview interview) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "インタビュー"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: interviews.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => onTapItem(interviews[index]),
                child: InterviewListItem(
                  interview: interviews[index],
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
