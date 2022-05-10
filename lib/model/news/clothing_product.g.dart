// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothing_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClothingProduct _$$_ClothingProductFromJson(Map<String, dynamic> json) =>
    _$_ClothingProduct(
      image: json['image'] as String,
      price: json['price'] as num,
      salesPrice: json['salesPrice'] as num?,
      brand: json['brand'] as String,
      part: json['part'] as String,
      itemName: json['itemName'] as String,
      leftSize: $enumDecodeNullable(_$ProductSizeEnumMap, json['leftSize']),
      leftShoeSize: (json['leftShoeSize'] as num?)?.toDouble(),
      leftCount: json['leftCount'] as int?,
    );

Map<String, dynamic> _$$_ClothingProductToJson(_$_ClothingProduct instance) =>
    <String, dynamic>{
      'image': instance.image,
      'price': instance.price,
      'salesPrice': instance.salesPrice,
      'brand': instance.brand,
      'part': instance.part,
      'itemName': instance.itemName,
      'leftSize': _$ProductSizeEnumMap[instance.leftSize],
      'leftShoeSize': instance.leftShoeSize,
      'leftCount': instance.leftCount,
    };

const _$ProductSizeEnumMap = {
  ProductSize.free: 'free',
  ProductSize.extraSmall: 'extraSmall',
  ProductSize.small: 'small',
  ProductSize.medium: 'medium',
  ProductSize.large: 'large',
  ProductSize.extraLarge: 'extraLarge',
  ProductSize.doubleExtraLarge: 'doubleExtraLarge',
};
