import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';
import 'package:gr_clothing_flutter/pages/main_tab/main_tab_page.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

void main() {
  runApp(const ProviderScope(child: GRClothingApp()));
}

class GRClothingApp extends StatelessWidget {
  const GRClothingApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: FontFamily.hiragino,
        appBarTheme: const AppBarTheme(
          foregroundColor: ColorName.peoples,
          shape: Border(bottom: BorderSide(color: ColorName.peoples, width: 1)),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0.0
        ),
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.zero
        ),
      ),
      home: const MainTabPage(),
      // hidden the debug label.
      debugShowCheckedModeBanner: false,
    );
  }
}