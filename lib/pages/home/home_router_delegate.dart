import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page.dart';
import 'package:gr_clothing_flutter/pages/home/home_page.dart';
import 'package:gr_clothing_flutter/pages/page_name.dart';
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
    final detailPageUrl = ref.watch(detailPageLinkUrlProvider);

    return Navigator(
      key: _nestedNavigatorKey,
      pages: [
        const MaterialPage(
          arguments: PageName.homePage,
          child: HomePage(),
        ),
        if (ref.watch(showFavoritePageProvider))
          MaterialPage(
            arguments: PageName.favoritePage,
            child: Scaffold(
              appBar: AppBar(
                foregroundColor: ColorName.peoples,
              ),
              body: const FavoritePage(),
            ),
          ),
        if (detailPageUrl.isNotEmpty)
          MaterialPage(
            arguments: PageName.detailPage,
            child: WebviewPage(initialUrl: detailPageUrl),
          )
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        final pageName = route.settings.arguments as PageName;
        switch (pageName) {
          case PageName.favoritePage:
            ref.read(showFavoritePageProvider.notifier).state = false;
            break;
          case PageName.detailPage:
            ref.read(detailPageLinkUrlProvider.notifier).state = "";
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

final showFavoritePageProvider =
    StateProvider.autoDispose<bool>((ref) => false);

final detailPageLinkUrlProvider = StateProvider<String>((ref) => "");
