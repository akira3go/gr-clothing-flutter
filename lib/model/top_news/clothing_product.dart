import 'package:freezed_annotation/freezed_annotation.dart';

part 'clothing_product.freezed.dart';
part 'clothing_product.g.dart';

@freezed
class ClothingProduct with _$ClothingProduct {
  factory ClothingProduct({
    required String image,
    required num price,
    num? salesPrice,
    required String brand,
    required String part,
    String? label,
    int? labelType,
  }) = _ClothingProduct;

  factory ClothingProduct.fromJson(Map<String, dynamic> json) =>
      _$ClothingProductFromJson(json);
}
