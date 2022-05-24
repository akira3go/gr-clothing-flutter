import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/category_list/category_list_item.dart';

final categoryListPageViewModelProvider = StateNotifierProvider.autoDispose<
    CategoryListPageViewModel, List<CategoryListItem>>((ref) {
  final state = [
    CategoryListItem(category: 'ロングスリーブ', productsCount: 956),
    CategoryListItem(category: '7分袖', productsCount: 86),
    CategoryListItem(category: 'Tシャツ・カットソー', productsCount: 2921),
    CategoryListItem(category: '長袖シャツ', productsCount: 371),
    CategoryListItem(category: '半袖シャツ', productsCount: 334),
    CategoryListItem(category: 'プルオーバーパーカー', productsCount: 983),
    CategoryListItem(category: 'ジップアップパーカー', productsCount: 221),
    CategoryListItem(category: 'トレーナー・スウェット', productsCount: 325),
    CategoryListItem(category: 'ニット・カーディガン', productsCount: 142),
    CategoryListItem(category: 'ジャージ・メッシュ', productsCount: 46),
    CategoryListItem(category: 'タンクトップ・ノースリーブ', productsCount: 174),
    CategoryListItem(category: 'その他トップス', productsCount: 39),
    CategoryListItem(category: 'ジャケット', productsCount: 494),
    CategoryListItem(category: 'コーチジャケット', productsCount: 113),
    CategoryListItem(category: 'マウンテンパーカー', productsCount: 51),
    CategoryListItem(category: 'スタジャン', productsCount: 43),
    CategoryListItem(category: 'ショートパンツ', productsCount: 252),
    CategoryListItem(category: 'フルレングス', productsCount: 557),
    CategoryListItem(category: 'スカート', productsCount: 42),
    CategoryListItem(category: 'ドレス・ワンピース', productsCount: 42),
    CategoryListItem(category: 'レギンス', productsCount: 15),
    CategoryListItem(category: 'キャップ', productsCount: 401),
    CategoryListItem(category: 'ハット・バケットハット', productsCount: 160),
    CategoryListItem(category: 'ニットキャップ', productsCount: 121),
    CategoryListItem(category: 'ベルト', productsCount: 81),
    CategoryListItem(category: 'ネックレス', productsCount: 123),
    CategoryListItem(category: 'バッグ', productsCount: 173),
    CategoryListItem(category: 'ポーチ', productsCount: 48),
    CategoryListItem(category: 'バックパック', productsCount: 55),
    CategoryListItem(category: 'ウォレット・カードケース', productsCount: 51),
    CategoryListItem(category: 'シューズ', productsCount: 116),
    CategoryListItem(category: 'ソックス', productsCount: 141),
    CategoryListItem(category: 'ピアス・イヤリング', productsCount: 34),
    CategoryListItem(category: 'リング', productsCount: 58),
    CategoryListItem(category: '腕時計', productsCount: 23),
    CategoryListItem(category: 'ラバーバンド・ブレスレット', productsCount: 43),
    CategoryListItem(category: '下着・水着', productsCount: 16),
    CategoryListItem(category: 'サングラス', productsCount: 85),
    CategoryListItem(category: 'バッジ', productsCount: 73),
    CategoryListItem(category: 'タオル', productsCount: 44),
    CategoryListItem(category: 'スマホアクセサリー', productsCount: 189),
    CategoryListItem(category: 'アクセサリー他', productsCount: 269),
    CategoryListItem(category: 'キーホルダー', productsCount: 71),
    CategoryListItem(category: 'ステッカー', productsCount: 39),
    CategoryListItem(category: 'CD', productsCount: 5),
    CategoryListItem(category: 'ラッピング', productsCount: 1),
    CategoryListItem(category: '予約商品', productsCount: 670),
  ];
  return CategoryListPageViewModel(state);
});

class CategoryListPageViewModel extends StateNotifier<List<CategoryListItem>> {
  CategoryListPageViewModel(List<CategoryListItem> state) : super(state);
}
