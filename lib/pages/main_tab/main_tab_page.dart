import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/gift/gift_page.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/pages/main_tab/bottom_bar_type.dart';
import 'package:gr_clothing_flutter/pages/my_page/my_page.dart';
import 'package:gr_clothing_flutter/pages/news/news_page.dart';
import 'package:gr_clothing_flutter/pages/search/search_page.dart';


class MainTabPage extends ConsumerWidget {
  const MainTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final barType = ref.watch(bottomBarTypeProvider);
    final barTypeState = ref.watch(bottomBarTypeProvider.state);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _activePage(barType, ref),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: barType.index,
        onTap: (index) {
          barTypeState.state = BottomBarType.values[index];
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorName.gray,
            ),
            activeIcon: Icon(Icons.home, color: ColorName.deepPink),
            label: "ホーム",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper, color: ColorName.gray),
            activeIcon: Icon(Icons.newspaper, color: ColorName.deepPink),
            label: "ニュース",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, color: ColorName.gray),
            activeIcon: Icon(Icons.search_rounded, color: ColorName.deepPink),
            label: "検索",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard, color: ColorName.gray),
            activeIcon: Icon(Icons.card_giftcard, color: ColorName.deepPink),
            label: "プレゼント",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: ColorName.gray),
            activeIcon: Icon(Icons.settings, color: ColorName.deepPink),
            label: "マイページ",
          ),
        ],
        unselectedItemColor: ColorName.gray,
        selectedItemColor: ColorName.deepPink,
        unselectedLabelStyle:
            const TextStyle(color: ColorName.gray, fontSize: 12),
        selectedLabelStyle:
            const TextStyle(color: ColorName.deepPink, fontSize: 12),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
      ),
    );
  }

  Widget _activePage(BottomBarType type, WidgetRef ref) {
    switch (type) {
      case BottomBarType.home:
        return Router(routerDelegate: HomeRouterDelegate(ref));
      case BottomBarType.news:
        return const NewsPage();
      case BottomBarType.search:
        return const SearchPage();
      case BottomBarType.gift:
        return const GiftPage();
      case BottomBarType.myPage:
        return const MyPage();
    }
  }
}
