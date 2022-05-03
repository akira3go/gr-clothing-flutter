import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/bookmark_item.dart';
import 'package:gr_clothing_flutter/pages/favorite/bookmark_list_head_text.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/webview/webview_page.dart';

class BookmarkListPage extends ConsumerWidget {
  const BookmarkListPage({Key? key}) : super(key: key);

  void pushDetailPage(BuildContext context, String linkUrl) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return WebviewPage(initialUrl: linkUrl);
    }));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageViewModelProvider);

    return Column(
      children: [
        const BookmarkListHeadTextPage(),
        const Divider(
            height: 2.0, thickness: 2, indent: 0.0, color: ColorName.overseas),
        Container(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          color: Colors.white,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: BookmarkItemWidget(
                  index.isEven,
                  data: state.news.latestUpdateNews[index],
                ),
                // click to detail page.
                onTap: () => pushDetailPage(
                    context, state.news.latestUpdateNews[index].link),
              );
            },
            itemCount: state.news.latestUpdateNews.length,
          ),
        )
      ],
    );
  }
}
