import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

final topPageCategoryProvider = StateProvider.autoDispose<TopPageCategory>((ref) {
  return TopPageCategory.news;
});

final productListTabType = StateProvider.autoDispose<ProductListTabType>((ref) {
  return ProductListTabType.normal;
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

enum ProductListTabType {
  normal,
  reserve,
  sale,
}

extension ProductListTabTypeExtension on ProductListTabType {
  String get title {
    switch (this) {
      case ProductListTabType.normal:
        return "通常商品";
      case ProductListTabType.reserve:
        return "予約商品";
      case ProductListTabType.sale:
        return "SALE";
    }
  }

  Color get activeColor {
    switch (this) {
      case ProductListTabType.sale:
        return Colors.red;
      default:
        return ColorName.skyBlue;
    }
  }

  Color get inactiveColor {
    switch (this) {
      case ProductListTabType.sale:
        return ColorName.saleTabInactive;
      default:
        return ColorName.rankingSecond;
    }
  }
}
