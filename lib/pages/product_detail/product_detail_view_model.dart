import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';

final productDetailViewModelProvider = StateNotifierProvider.autoDispose<ProductDetailViewModel, ProductDetailState>((ref) {
  return ProductDetailViewModel(ProductDetailState());
});

class ProductDetailViewModel extends StateNotifier<ProductDetailState> {
  ProductDetailViewModel(ProductDetailState state) : super(state);

}

class ProductDetailState {
  final String brand = "over print";
  final String brandImage = "https://shop.gekirock.com/content/banner/assets_c/2022/04/FQnXXaYagAMebry-thumb-1200xauto-1037.jpg";
  final String part = "キーボード";
  final String productName = "over print（オーバープリント）over print Zinc alloy Key Holder";
  final String productCode = "Z21UD07";
  final List<String> productImages = [
    "https://shop.gekirock.com/upload/save_image/07061756_559a42d2f209e.jpg",
    "https://shop.gekirock.com/upload/save_image/07061756_559a42d2f209e.jpg",
  ];
  final String productExplain = "前後のレングスが大幅に異なるユニークなロングシャツ。襟足を伸ばしたような作りに加え、トロンと落ちるビッグなAラインシルエットも個性を主張する。左胸にあしらったブランドネームのステッチ、グランジ、パンクスピリットを形にしたようなスリーブレスの仕立ても絶妙の一言。また、一枚で羽織ってよし、Tシャツなどとレイヤードしてもよしと、着方次第で簡単に印象が変えられる利点にも注目を。いつものカジュアルスタイルを何段階もアップデートする主役級の万能アイテムと言えよう。\n\nこちら数量限定なのでお早めにどうぞ!";
  final num price = 22000;
  final num? salesPrice = 10000;
  final bool isFreeShipping = true;
  final bool isFavorite = true;
  final int point = 500;
  final List<Stock> stockList = [
    Stock(ProductSize.free, true),
    Stock(ProductSize.small, false),
    Stock(ProductSize.extraLarge, true)
  ];
  final List<String> sizeInformationTitle = ["サイズ", "縦", "横", "リング直径"];
  final List<List<String>> sizeInformation = [
    ["フリー", "2", "3", "3.5"],
    ["フリー", "2", "3", "3.5"],
    ["フリー", "2", "3", "3.5"],
  ];
  final String? sizeImage = "https://shop.gekirock.com/user_data/packages/elementary/img/common/tops.jpg?ver=202109";
  final List<List<ClothingProduct>> partBrandProductList = [
    [ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, salesPrice: 9836005, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, salesPrice: 98365, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),
    ],[ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),]
  ];
  final List<List<ClothingProduct>> brandProductList = [[
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, salesPrice: 98365, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),
  ]];
  final List<List<ClothingProduct>> partProductList = [[
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/05021057_626f3aa10d821.jpg", price: 1234, salesPrice: 98365, brand: "あああああ", part: "キーホルダー", itemName: "Keyholder"),
  ]];
}

class Stock {
  Stock(this.size, this.canPurchase,);
  final ProductSize size;
  final bool canPurchase;
}