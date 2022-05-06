import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/page_name.dart';
import 'package:gr_clothing_flutter/pages/top/top_page.dart';

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
        MaterialPage(
          arguments: PageName.topPage,
          child: TopPage(),
        ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        final pageName = route.settings.arguments as PageName;
        switch (pageName) {
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

