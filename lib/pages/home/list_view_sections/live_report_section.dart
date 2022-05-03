import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/live_report.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/live_report_list_item.dart';

class LiveReportSection extends StatelessWidget {
  const LiveReportSection({
    Key? key,
    required this.liveReport,
    required this.tapBookMark,
    required this.onTapItem,
  }) : super(key: key);

  final List<LiveReport> liveReport;
  final Function(LiveReport liveReport, bool isFavorite) tapBookMark;
  final Function(LiveReport liveReport) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePageSectionHeader(title: "ライヴレポート"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: liveReport.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => onTapItem(liveReport[index]),
                child: LiveReportListItem(
                  liveReport: liveReport[index],
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
