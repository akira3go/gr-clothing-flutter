import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class BookmarkListHeadTextPage extends ConsumerWidget {
  const BookmarkListHeadTextPage({Key? key}) : super(key: key);
  static const String bookmarkText =
      'ブックマーク追加ボタンから、気になった記事を追加することができます。ブックマークに追加した記事はあとから一覧で確認することができるので、時間があるときにじっくりと内容を読むこともできます。';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(),
            flex: 1,
          ),
          SizedBox(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: 30.0,
                    child: Flex(
                      direction: Axis.vertical,
                      verticalDirection: VerticalDirection.down,
                      children: const [
                        Icon(
                          Icons.bookmark,
                          color: ColorName.peoples,
                        ),
                      ],
                    ),
                  ),
                  const Flexible(
                    child: Text(bookmarkText),
                  ),
                ],
              ),
            ),
            width: 325,
          ),
          const Expanded(
            child: SizedBox(),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
