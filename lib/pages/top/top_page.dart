import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/model/url_launcher/open_browser.dart';
import 'package:gr_clothing_flutter/pages/artist_list/artist_list_page.dart';
import 'package:gr_clothing_flutter/pages/category_list/category_list_page.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/pages/search/search_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/top/drawer/top_drawer.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_category.dart';
import 'package:gr_clothing_flutter/utils/widget/gradation_border.dart';
import 'package:gr_clothing_flutter/model/shared_preferences/preferences_provider.dart';
import 'package:gr_clothing_flutter/pages/category_list/artist_search_dropdown.dart';
import 'package:gr_clothing_flutter/pages/news/news_page.dart';

final topPageScaffoldKey = GlobalKey<ScaffoldState>();

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: topPageScaffoldKey,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
        leading: Container(
          margin: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () => topPageScaffoldKey.currentState!.openDrawer(),
            icon: const Icon(Icons.menu, size: 30),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () =>
                  ref.read(showCartPageProvider.notifier).state = true,
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: TopDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _headerTabWidget(ref),
          _searchFieldWidget(ref),
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _typeFieldWidget(TopPageCategory.news, ref),
                  _typeFieldWidget(TopPageCategory.brand, ref),
                  _typeFieldWidget(TopPageCategory.artist, ref),
                  _typeFieldWidget(TopPageCategory.category, ref),
                  _typeFieldWidget(TopPageCategory.sale, ref),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                _mainWidget(ref.watch(topPageCategoryProvider)),
                GradationBorder(height: 10),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GradationBorder(height: 10, reverse: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // header部分のタブ
  Widget _headerTabWidget(WidgetRef ref) {
    final isLoggedIn =
        ref.watch(preferencesProvider.select((value) => value.isLoggedIn));
    return Container(
      height: 26,
      color: ColorName.skyDeepBlue,
      padding: const EdgeInsets.all(3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(showMyPageProvider.notifier).state = true;
                } else {
                  ref.read(showLoginPageProvider.notifier).state = true;
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn ? Icons.person : Icons.login_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    isLoggedIn ? "Myページ" : "ログイン",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(showFavoritePageProvider.notifier).state = true;
                } else {
                  openBrowser(LinkUrl.signUpAccount);
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn ? Icons.star_rounded : Icons.create_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      isLoggedIn ? "お気に入り" : "新規会員登録",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(preferencesProvider.notifier).isLoggedIn = false;
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn
                        ? Icons.logout_rounded
                        : Icons.remove_red_eye_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    isLoggedIn ? "ログアウト" : "新着一覧",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 検索フィールド
  Widget _searchFieldWidget(WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 20, 5, 10),
      height: 35,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                ref.read(showSearchPageProvider.notifier).state = true;
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.lightGray),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: ColorName.lightGray,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Container(
                        width: 50,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: ColorName.backgroundLightGray,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                        ),
                        child: const Icon(
                          Icons.search_rounded,
                          color: ColorName.lightGray,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          ref.watch(searchPageViewModel
                              .select((value) => value.keyword)),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
          if (ref.watch(topPageCategoryProvider) == TopPageCategory.artist)
            _artistLocationSelectWidget(ref),
        ],
      ),
    );
  }

  /// 国内・海外の選択
  Widget _artistLocationSelectWidget(WidgetRef ref) {
    final items = ArtistSearchDropdown.values.map((value) {
      return DropdownMenuItem(
        child: Text(value.title, style: const TextStyle(fontSize: 11)),
        value: value,
      );
    }).toList();
    return Container(
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.lightGray),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DropdownButton(
        underline: Container(),
        value: ref.watch(artistSearchDropdownProvider),
        isExpanded: true,
        items: items,
        onChanged: (value) => ref
            .read(artistSearchDropdownProvider.notifier)
            .state = value as ArtistSearchDropdown,
      ),
    );
  }

  Widget _typeFieldWidget(TopPageCategory category, WidgetRef ref) {
    final selectedCategory = ref.watch(topPageCategoryProvider);
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () =>
                ref.read(topPageCategoryProvider.notifier).state = category,
            child: Container(
              padding: category == TopPageCategory.sale
                  ? const EdgeInsets.all(12)
                  : const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
              decoration: BoxDecoration(
                color: selectedCategory == category
                    ? selectedCategory.color
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: selectedCategory == category
                      ? Colors.transparent
                      : ColorName.lightGray,
                ),
              ),
              alignment: Alignment.center,
              child: category.icon.image(
                color: selectedCategory == category
                    ? Colors.white
                    : category.color,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
            child: Text(
              category.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // メイン部分
  Widget _mainWidget(TopPageCategory selectedTab) {
    switch (selectedTab) {
      case TopPageCategory.news:
        return const NewsPage();
      case TopPageCategory.category:
        return const CategoryListPage();
      case TopPageCategory.artist:
        return const ArtistListPage();
      default:
        return const NewsPage();
    }
  }
}
