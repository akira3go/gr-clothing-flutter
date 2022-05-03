import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/live_report/live_report_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/live_report_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class LiveReportPage extends ConsumerWidget {
  const LiveReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liveReports = ref.watch(liveReportProvider);
    return Column(
      children: [
        const HomePageSectionHeader(title: "ライヴレポート"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: liveReports.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return LiveReportListItem(
                liveReport: liveReports[index],
                tapBookMark: (liveReport, isFavorite) {},
              );
            },
          ),
        ),
      ],
    );
  }
}
