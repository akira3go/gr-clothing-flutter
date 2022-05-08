import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';
import 'package:gr_clothing_flutter/model/shared_preferences/preferences.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const ProviderScope(child: GRClothingApp()));
}

class GRClothingApp extends ConsumerWidget {
  const GRClothingApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorName.skyBlue,
        primarySwatch: Colors.blue,
        fontFamily: FontFamily.hiragino,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: ColorName.skyBlue,
          shadowColor: Colors.transparent,
          elevation: 0.0
        ),
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.zero
        ),
      ),
      home: KeyboardDismissOnTap(child: _homeWidget()),
      // hidden the debug label.
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _homeWidget() {
    final topPage = Consumer(builder: (context, ref, widget) {
      return Router(routerDelegate: HomeRouterDelegate(ref));
    },);
    if (kDebugMode) {
      return Banner(
        message: "GekiClothing",
        location: BannerLocation.topStart,
        child: topPage
      );
    } else {
      return topPage;
    }
  }
}