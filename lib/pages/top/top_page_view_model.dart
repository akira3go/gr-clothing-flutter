import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/clothing_product.dart';

final newsViewModelProvider =
    StateNotifierProvider.autoDispose<NewsViewModel, NewsState>((ref) {
  // モックデータ
  return NewsViewModel(
    NewsState(
      rankingItems: [
        RankingData(
          title: "春の即戦力ライトアウター、シャツランキング！",
          rankingType: RankingType.product,
          ranking: [
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/04061509_624d2e93897b6.jpg", price: 16500, brand: "MISHIKA", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/rs163ae4a8f0592a4ac4d40736bae53b5224036070.jpg", price: 23100, brand: "glamb", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/03241649_623c227084e10.jpg", price: 8800, brand: "NieR", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01041226_61d3be55e6833.jpg", price: 11880, brand: "TRAVAS TOKYO", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/6fd5196530797857a565acef98c362c5ce91dddd.jpg", price: 18480, brand: "VIRGO", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/03241704_623c2621ee1dd.jpg", price: 9000, brand: "NieR", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/03071443_62259b9f589cf.jpg", price: 16280, brand: "HYPER CORE", part: "Jacket"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/12241215_61c53b6bc237c.jpg", price: 10780, brand: "ANIMALIA", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01171254_61e4e85e1d642.jpg", price: 18480, brand: "TRAVAS TOKYO", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 22000, brand: "MISHIKA", part: "Jacket"),
            ],
          ],
        ),
        RankingData(
          title: "人気アイテムランキング",
          rankingType: RankingType.product,
          ranking: [
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 6600, brand: "Subciety", part: "T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 7590, brand: "glamb × ジョジョの奇妙な冒険", part: "T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 4620, brand: "RUDIE's", part: "T-Shirt"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 7590, brand: "GALFY", part: "T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 6600, brand: "over print", part: "L/S T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 5500, brand: "over print", part: "L/S T-Shirt"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 7590, brand: "GALFY", part: "T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 9900, brand: "LONELY論理", part: "L/S T-Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 6380, brand: "HYPER CORE", part: "T-Shirt"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 4950, brand: "THRASHER", part: "T-Shirt"),
            ],
          ],
        ),
        RankingData(
          title: "人気ブランドランキング",
          rankingType: RankingType.brand,
          ranking: [
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 16500, brand: "GALFY", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 23100, brand: "over print", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 8800, brand: "NieR", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 11880, brand: "アマツカミ", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 18480, brand: "MISHIKA", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 9000, brand: "PUNK DRUNKERS", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 16280, brand: "Zephyren", part: "Jacket"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 10780, brand: "TRAVAS TOKYO", part: "L/S Shirt"),
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 18480, brand: "RUDIE'S", part: "Jacket"),
            ],
            [
              ClothingProduct(image: "https://shop.gekirock.com/upload/save_image/01252114_61efe9b746cd8.jpg", price: 22000, brand: "Subciety", part: "Jacket"),
            ],
          ],
        ),
      ],
    ),
  );
});

class NewsViewModel extends StateNotifier<NewsState> {
  NewsViewModel(NewsState state) : super(state);
}

class NewsState {
  NewsState({required this.rankingItems});

  List<RankingData> rankingItems;
}

class RankingData {
  RankingData({
    required this.title,
    required this.rankingType,
    required this.ranking,
  });

  String title;
  RankingType rankingType;
  List<List<ClothingProduct>> ranking;
}

enum RankingType {
  product,
  brand
}