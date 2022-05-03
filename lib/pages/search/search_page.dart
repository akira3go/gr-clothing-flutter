import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/search/search_list.dart';
import 'package:gr_clothing_flutter/pages/search/search_text.dart';


class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: const [
      Divider(
          height: 2.0, thickness: 2.0, indent: 0.0, color: ColorName.peoples),
      SearchTextPage(),
      SearchListPage(),
    ]);
  }
}