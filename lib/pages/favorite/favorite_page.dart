import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/bookmark_list.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_artist_list.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page_head.dart';

/// button in favorite page top,  if 0 is click left style, 1 is click right style
final buttonClickIndexTypeProvider = StateProvider.autoDispose<int>((ref) => 0);

class FavoritePage extends ConsumerWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonClickIndex = ref.watch(buttonClickIndexTypeProvider);
    final buttonClickIndexState = ref.watch(buttonClickIndexTypeProvider.state);
    Widget _getActivePage(int type) {
      switch (type) {
        case 0:
          return const FavoriteArtistListPage();
        case 1:
          return const BookmarkListPage();
      }
      // The body might complete normally, causing 'null' to be returned,
      // but the return type, 'Widget', is a potentially non-nullable type.
      return const FavoriteArtistListPage();
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(
              height: 2.0,
              thickness: 2.0,
              indent: 0.0,
              color: ColorName.peoples),
          const FavoriteHeadButtonPage(),
          _getActivePage(buttonClickIndex),
        ],
      ),
    );
  }
}
