import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/interview/interview_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/interview_list_item.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class InterviewPage extends ConsumerWidget {
  const InterviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(interviewPageProvider);

    return Column(
      children: [
        const HomePageSectionHeader(title: "インタビュー"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            itemCount: state.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 8
            ),
            itemBuilder: (BuildContext context, int index) {
              return InterviewListItem(interview: state[index], tapBookMark: (interview, isFavorite) {},);
            },
          ),
        ),
      ],
    );
  }
}