import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/search/search_item.dart';
import 'package:gr_clothing_flutter/pages/webview/webview_page.dart';

class SearchListPage extends ConsumerWidget {
  const SearchListPage({Key? key}) : super(key: key);

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
        Container(
          padding: const EdgeInsets.only(top: 10.0),
          color: Colors.white,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: SearchItemWidget(
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
