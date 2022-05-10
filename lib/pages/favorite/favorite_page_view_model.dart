import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';

final favoritePageViewModelProvider = StateNotifierProvider.autoDispose<FavoritePageViewModel, FavoritePageState>(
        (ref) {
  final favoriteList = [
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 8800, brand: "NieR（ニーア）", itemName: "HIGH-NECK ZIP", part: "OUTER【WING】"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 12100, brand: "MISHIKA（ミシカ）", itemName: "M21100938", part: "OUTER【WING】"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 16500, brand: "MISHIKA（ミシカ）", itemName: "M21100280", part: "SHORTS"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 16500, brand: "MISHIKA（ミシカ）", itemName: "M21100938", part: "SHIRT"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 12100, brand: "NieR（ニーア）", itemName: "HIGH-NECK ZIP", part: "SHIRT"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 8800, brand: "NieR（ニーア）", itemName: "HIGH-NECK ZIP", part: "SHIRT"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 12100, brand: "NieR（ニーア）", itemName: "M21100938", part: "SHORTS"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 16500, brand: "MISHIKA（ミシカ）", itemName: "M21100938", part: "SHIRT"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 16500, brand: "NieR（ニーア）", itemName: "M21100280", part: "SHORTS"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 8800, brand: "MISHIKA（ミシカ）", itemName: "M21100938", part: "SHIRT"),
    ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04041435_624a839ba89a2.jpg", price: 16500, brand: "NieR（ニーア）", itemName: "HIGH-NECK ZIP", part: "OUTER【WING】"),
  ];
  return FavoritePageViewModel(FavoritePageState(favoriteList));
});

class FavoritePageViewModel extends StateNotifier<FavoritePageState> {
  FavoritePageViewModel(FavoritePageState state) : super(state);
}

class FavoritePageState {
  FavoritePageState(this.favoriteList);

  final List<ClothingProduct> favoriteList;
}
