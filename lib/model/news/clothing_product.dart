import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:enum_to_string/enum_to_string.dart';

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
    ProductSize? leftSize,
    double? leftShoeSize,
    int? leftCount,
  }) = _ClothingProduct;

  factory ClothingProduct.fromJson(Map<String, dynamic> json) =>
      _$ClothingProductFromJson(json);
}

enum ProductSize {
  free,
  extraSmall,
  small,
  medium,
  large,
  extraLarge,
  doubleExtraLarge,
}

extension ProductSizeExtension on ProductSize {
  String get label {
    switch (this) {
      case ProductSize.free:
        return "フリー";
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
      case ProductSize.doubleExtraLarge:
        return "2XL";
    }
  }
}

class ProductSizeEnumConverter implements JsonConverter<ProductSize?, String?> {
  const ProductSizeEnumConverter();

  @override
  ProductSize? fromJson(String? json) => EnumToString.fromString(
    ProductSize.values,
    json ?? '',
  );

  @override
  String? toJson(ProductSize? object) =>
      object == null ? null : EnumToString.convertToString(object);
}
