import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page_body.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: FavoritePageBody(),
      ),
    );
  }
}
