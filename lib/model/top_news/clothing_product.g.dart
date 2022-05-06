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
      label: json['label'] as String?,
      labelType: json['labelType'] as int?,
    );

Map<String, dynamic> _$$_ClothingProductToJson(_$_ClothingProduct instance) =>
    <String, dynamic>{
      'image': instance.image,
      'price': instance.price,
      'salesPrice': instance.salesPrice,
      'brand': instance.brand,
      'part': instance.part,
      'label': instance.label,
      'labelType': instance.labelType,
    };
