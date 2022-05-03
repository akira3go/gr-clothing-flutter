import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_artist_item.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_artist_list_head_text.dart';

const _artistListMock = ['アーティスト1', 'アーティスト2', 'アーティスト3'];

class FavoriteArtistListPage extends ConsumerWidget {
  const FavoriteArtistListPage({Key? key}) : super(key: key);

  List<Widget> _getData() {
    List<Widget> tempList = [];
    for (var i = 0; i < _artistListMock.length; i++) {
      tempList.add(FavoriteArtistItemWidget(
        _artistListMock[i],
        i.isOdd,
        key: ValueKey(i),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const FavoriteArtistListHeadTextPage(),
          const Divider(
              height: 2.0,
              thickness: 2,
              indent: 0.0,
              color: ColorName.japanese),
          Container(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            color: Colors.white,
            child: Column(
              children: _getData(),
            ),
          )
        ],
      ),
    );
  }
}
