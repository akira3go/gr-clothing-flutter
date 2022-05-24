import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_page_state.freezed.dart';

@freezed
class SearchPageState with _$SearchPageState {
  factory SearchPageState({
    @Default("") String keyword,
    required ProductSize productSize,
    required ProductCategory productCategory,
    required ProductColor productColor,
    required PriceRange priceRange,
    required SaleProduct saleProduct,
    required ReserveProduct reserveProduct,
    required DisplaySort displaySort,
    required DisplayItemsCount displayItemsCount,
    @Default(false) bool includeSoldOut,
    @Default(false) bool includeVideoPosting,
  }) = _SearchPageState;
}

/// サイズ
enum ProductSize {
  all,
  twoExtraSmall,
  extraSmall,
  small,
  medium,
  large,
  extraLarge,
  twoExtraLarge,
  threeExtraLarge,
  ladiesExtraSmall,
  ladiesSmall,
  ladiesMedium,
  ladiesLarge,
  free,
}

extension ProductSizeExtension on ProductSize {
  String get label {
    switch (this) {
      case ProductSize.all:
        return "全て";
      case ProductSize.twoExtraSmall:
        return "XXS";
      case ProductSize.extraSmall:
        return "XS";
      case ProductSize.small:
        return "S";
      case ProductSize.medium:
        return "M";
      case ProductSize.large:
        return "L";
      case ProductSize.extraLarge:
        return "XL";
      case ProductSize.twoExtraLarge:
        return "2XL";
      case ProductSize.threeExtraLarge:
        return "3XL";
      case ProductSize.ladiesExtraSmall:
        return "Ladies XS";
      case ProductSize.ladiesSmall:
        return "Ladies S";
      case ProductSize.ladiesMedium:
        return "Ladies M";
      case ProductSize.ladiesLarge:
        return "Ladies L";
      case ProductSize.free:
        return "Free";
    }
  }
}

/// カテゴリー
enum ProductCategory {
  all,
  shirt,
  reserved,
}

extension ProductCategoryExtension on ProductCategory {
  String get label {
    switch (this) {
      case ProductCategory.all:
        return "全て";
      case ProductCategory.shirt:
        return "Tシャツ・カットソー";
      case ProductCategory.reserved:
        return "予約商品";
    }
  }
}

enum ProductColor {
  all,
  black,
  gray,
  white,
  brown,
  khaki,
  beige,
  red,
  pink,
  orange,
  yellow,
  purple,
  green,
  navy,
  blue,
  gold,
  silver,
  camo,
  paisley,
  animal,
  tieDye,
  check,
  dot,
  stripe,
}

extension ProductColorExtension on ProductColor {
  String get label {
    switch (this) {
      case ProductColor.all:
        return "全て";
      case ProductColor.black:
        return "ブラック";
      case ProductColor.gray:
        return "グレー";
      case ProductColor.white:
        return "ホワイト";
      case ProductColor.brown:
        return "ブラウン";
      case ProductColor.khaki:
        return "カーキ";
      case ProductColor.beige:
        return "ベージュ";
      case ProductColor.red:
        return "レッド";
      case ProductColor.pink:
        return "ピンク";
      case ProductColor.orange:
        return "オレンジ";
      case ProductColor.yellow:
        return "イエロー";
      case ProductColor.purple:
        return "パープル";
      case ProductColor.green:
        return "グリーン";
      case ProductColor.navy:
        return "ネイビー";
      case ProductColor.blue:
        return "ブルー";
      case ProductColor.gold:
        return "ゴールド";
      case ProductColor.silver:
        return "シルバー";
      case ProductColor.camo:
        return "カモ";
      case ProductColor.paisley:
        return "ペイズリー";
      case ProductColor.animal:
        return "アニマル";
      case ProductColor.tieDye:
        return "タイダイ";
      case ProductColor.check:
        return "チェック";
      case ProductColor.dot:
        return "ドット";
      case ProductColor.stripe:
        return "ストライプ";
    }
  }

  AssetGenImage? get image {
    switch (this) {
      case ProductColor.all:
        return null;
      case ProductColor.black:
        return Assets.images.black;
      case ProductColor.gray:
        return Assets.images.gray;
      case ProductColor.white:
        return Assets.images.white;
      case ProductColor.brown:
        return Assets.images.brown;
      case ProductColor.khaki:
        return Assets.images.khaki;
      case ProductColor.beige:
        return Assets.images.beige;
      case ProductColor.red:
        return Assets.images.red;
      case ProductColor.pink:
        return Assets.images.pink;
      case ProductColor.orange:
        return Assets.images.orange;
      case ProductColor.yellow:
        return Assets.images.yellow;
      case ProductColor.purple:
        return Assets.images.purple;
      case ProductColor.green:
        return Assets.images.green;
      case ProductColor.navy:
        return Assets.images.navy;
      case ProductColor.blue:
        return Assets.images.blue;
      case ProductColor.gold:
        return Assets.images.gold;
      case ProductColor.silver:
        return Assets.images.silver;
      case ProductColor.camo:
        return Assets.images.camo;
      case ProductColor.paisley:
        return Assets.images.paisley;
      case ProductColor.animal:
        return Assets.images.animal;
      case ProductColor.tieDye:
        return Assets.images.tyedie;
      case ProductColor.check:
        return Assets.images.check;
      case ProductColor.dot:
        return Assets.images.dot;
      case ProductColor.stripe:
        return Assets.images.stripe;
    }
  }
}

/// 価格帯
enum PriceRange {
  all,
  thousand,
  threeThousand,
  fifthThousand,
  tenThousand,
  fifteenThousand,
  overFifteen,
}

extension PriceRangeExtension on PriceRange {
  String get label {
    switch (this) {
      case PriceRange.all:
        return "全て";
      case PriceRange.thousand:
        return "0~1,000円";
      case PriceRange.threeThousand:
        return "1,000~3,000円";
      case PriceRange.fifthThousand:
        return "3,000~5,000円";
      case PriceRange.tenThousand:
        return "5,000~10,000円";
      case PriceRange.fifteenThousand:
        return "10,000~15,000円";
      case PriceRange.overFifteen:
        return "15,000円~";
    }
  }
}

/// セール
enum SaleProduct {
  all,
  sale,
  pointSale,
  guerrillaSale,
}

extension SaleProductExtension on SaleProduct {
  String get label {
    switch (this) {
      case SaleProduct.all:
        return "全て";
      case SaleProduct.sale:
        return "セール品";
      case SaleProduct.pointSale:
        return "ポイントセール品";
      case SaleProduct.guerrillaSale:
        return "ゲリラセール対象商品";
    }
  }
}

/// 予約商品
enum ReserveProduct {
  all,
  unreserved,
  reserved,
}

extension ReserveProductExtension on ReserveProduct {
  String get label {
    switch (this) {
      case ReserveProduct.all:
        return "全て";
      case ReserveProduct.unreserved:
        return "予約商品以外";
      case ReserveProduct.reserved:
        return "予約商品のみ";
    }
  }
}

/// 表示順
enum DisplaySort {
  releaseDateNewer,
  releaseDateOlder,
  priceCheaper,
  priceHigher,
}

extension DisplaySortExtension on DisplaySort {
  String get label {
    switch (this) {
      case DisplaySort.releaseDateNewer:
        return "新→古";
      case DisplaySort.releaseDateOlder:
        return "古→新";
      case DisplaySort.priceCheaper:
        return "安→高";
      case DisplaySort.priceHigher:
        return "高→安";
    }
  }
}

/// 表示件数
enum DisplayItemsCount {
  few,
  normal,
  many,
  soMany,
}

extension DisplayItemsCountExtension on DisplayItemsCount {
  String get label {
    switch (this) {
      case DisplayItemsCount.few:
        return "60件";
      case DisplayItemsCount.normal:
        return "120件";
      case DisplayItemsCount.many:
        return "180件";
      case DisplayItemsCount.soMany:
        return "240件";
    }
  }
}
