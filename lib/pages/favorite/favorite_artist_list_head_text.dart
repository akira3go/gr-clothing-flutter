import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';


class FavoriteArtistListHeadTextPage extends ConsumerWidget {
  const FavoriteArtistListHeadTextPage({Key? key}) : super(key: key);
  static const favoriteArtistListText =
      'お気に入りアーティスト追加ボタンから、お気に入りのアーティストを追加することができます。お気に入りに登録したアーティストのニュースなど、更新された情報を一覧で見ることができます。気になったアーティストはどんどんお気に入りに追加しよう！';

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
                          Icons.people,
                          color: ColorName.peoples,
                        ),
                      ],
                    ),
                  ),
                  const Flexible(
                    child: Text(favoriteArtistListText),
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
