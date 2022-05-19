import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page.dart';
import 'package:gr_clothing_flutter/pages/login/login_page.dart';
import 'package:gr_clothing_flutter/pages/my_page/my_page.dart';
import 'package:gr_clothing_flutter/pages/page_name.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_page.dart';
import 'package:gr_clothing_flutter/pages/top/top_page.dart';
import 'package:gr_clothing_flutter/pages/webview/webview_page.dart';

final GlobalKey<NavigatorState> _nestedNavigatorKey =
    GlobalKey<NavigatorState>();

class HomeRouterDelegate extends RouterDelegate<void>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  HomeRouterDelegate(this.ref);

  final WidgetRef ref;

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _nestedNavigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _nestedNavigatorKey,
      pages: [
        const MaterialPage(
          arguments: PageName.topPage,
          child: TopPage(),
        ),
        if (ref.watch(showLoginPageProvider))
          const MaterialPage(
            arguments: PageName.loginPage,
            child: LoginPage(),
            fullscreenDialog: true,
          ),
        if (ref.watch(showMyPageProvider))
          MaterialPage(
            arguments: PageName.myPage,
            child: MyPage(),
            fullscreenDialog: true,
          ),
        if (ref.watch(showFavoritePageProvider))
          const MaterialPage(
            arguments: PageName.favoritePage,
            child: FavoritePage(),
            fullscreenDialog: true,
          ),
        if (ref.watch(showCartPageProvider))
          MaterialPage(
            arguments: PageName.cartPage,
            child: WebviewPage(
              initialUrl: "https://shop.gekirock.com/cart/",
            ),
          ),
        if (ref.watch(showProductDetailProvider))
          const MaterialPage(
            arguments: PageName.productDetailPage,
            child: ProductDetailPage(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        final pageName = route.settings.arguments as PageName;
        switch (pageName) {
          case PageName.loginPage:
            ref.read(showLoginPageProvider.notifier).state = false;
            break;
          case PageName.myPage:
            ref.read(showMyPageProvider.notifier).state = false;
            break;
          case PageName.favoritePage:
            ref.read(showFavoritePageProvider.notifier).state = false;
            break;
          case PageName.productDetailPage:
            ref.read(showProductDetailProvider.notifier).state = false;
            break;
          case PageName.cartPage:
            ref.read(showCartPageProvider.notifier).state = false;
            break;
          default:
            break;
        }
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(void configuration) async {}
}

final showLoginPageProvider = StateProvider.autoDispose<bool>((ref) => false);
final showMyPageProvider = StateProvider.autoDispose<bool>((ref) => false);
final showFavoritePageProvider =
    StateProvider.autoDispose<bool>((ref) => false);
final showProductDetailProvider =
    StateProvider.autoDispose<bool>((ref) => false);
final showCartPageProvider = StateProvider.autoDispose<bool>((ref) => false);
