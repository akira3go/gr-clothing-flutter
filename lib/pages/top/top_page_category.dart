import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

final topPageCategoryProvider = StateProvider.autoDispose<TopPageCategory>((ref) {
  return TopPageCategory.news;
});

enum TopPageCategory {
  news,
  brand,
  artist,
  category,
  sale,
}

extension TopPageCategoryExtension on TopPageCategory {
  String get title {
    switch (this) {
      case TopPageCategory.news:
        return "ニュース";
      case TopPageCategory.brand:
        return "ブランド";
      case TopPageCategory.artist:
        return "アーティスト";
      case TopPageCategory.category:
        return "カテゴリー";
      case TopPageCategory.sale:
        return "セール";
    }
  }

  AssetGenImage get icon {
    switch (this) {
      case TopPageCategory.news:
        return Assets.images.newsIcon;
      case TopPageCategory.brand:
        return Assets.images.brandIcon;
      case TopPageCategory.artist:
        return Assets.images.artistIcon;
      case TopPageCategory.category:
        return Assets.images.categoryIcon;
      case TopPageCategory.sale:
        return Assets.images.saleIcon;
    }
  }

  Color get color {
    switch (this) {
      case TopPageCategory.sale:
        return Colors.red;
      default:
        return ColorName.skyBlue;
    }
  }
}
