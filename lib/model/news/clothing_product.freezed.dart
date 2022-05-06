// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clothing_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClothingProduct _$ClothingProductFromJson(Map<String, dynamic> json) {
  return _ClothingProduct.fromJson(json);
}

/// @nodoc
mixin _$ClothingProduct {
  String get image => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num? get salesPrice => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get part => throw _privateConstructorUsedError;
  ProductSize? get leftSize => throw _privateConstructorUsedError;
  double? get leftShoeSize => throw _privateConstructorUsedError;
  int? get leftCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClothingProductCopyWith<ClothingProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClothingProductCopyWith<$Res> {
  factory $ClothingProductCopyWith(
          ClothingProduct value, $Res Function(ClothingProduct) then) =
      _$ClothingProductCopyWithImpl<$Res>;
  $Res call(
      {String image,
      num price,
      num? salesPrice,
      String brand,
      String part,
      ProductSize? leftSize,
      double? leftShoeSize,
      int? leftCount});
}

/// @nodoc
class _$ClothingProductCopyWithImpl<$Res>
    implements $ClothingProductCopyWith<$Res> {
  _$ClothingProductCopyWithImpl(this._value, this._then);

  final ClothingProduct _value;
  // ignore: unused_field
  final $Res Function(ClothingProduct) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? price = freezed,
    Object? salesPrice = freezed,
    Object? brand = freezed,
    Object? part = freezed,
    Object? leftSize = freezed,
    Object? leftShoeSize = freezed,
    Object? leftCount = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      salesPrice: salesPrice == freezed
          ? _value.salesPrice
          : salesPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      part: part == freezed
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as String,
      leftSize: leftSize == freezed
          ? _value.leftSize
          : leftSize // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      leftShoeSize: leftShoeSize == freezed
          ? _value.leftShoeSize
          : leftShoeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      leftCount: leftCount == freezed
          ? _value.leftCount
          : leftCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ClothingProductCopyWith<$Res>
    implements $ClothingProductCopyWith<$Res> {
  factory _$ClothingProductCopyWith(
          _ClothingProduct value, $Res Function(_ClothingProduct) then) =
      __$ClothingProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      num price,
      num? salesPrice,
      String brand,
      String part,
      ProductSize? leftSize,
      double? leftShoeSize,
      int? leftCount});
}

/// @nodoc
class __$ClothingProductCopyWithImpl<$Res>
    extends _$ClothingProductCopyWithImpl<$Res>
    implements _$ClothingProductCopyWith<$Res> {
  __$ClothingProductCopyWithImpl(
      _ClothingProduct _value, $Res Function(_ClothingProduct) _then)
      : super(_value, (v) => _then(v as _ClothingProduct));

  @override
  _ClothingProduct get _value => super._value as _ClothingProduct;

  @override
  $Res call({
    Object? image = freezed,
    Object? price = freezed,
    Object? salesPrice = freezed,
    Object? brand = freezed,
    Object? part = freezed,
    Object? leftSize = freezed,
    Object? leftShoeSize = freezed,
    Object? leftCount = freezed,
  }) {
    return _then(_ClothingProduct(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      salesPrice: salesPrice == freezed
          ? _value.salesPrice
          : salesPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      part: part == freezed
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as String,
      leftSize: leftSize == freezed
          ? _value.leftSize
          : leftSize // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      leftShoeSize: leftShoeSize == freezed
          ? _value.leftShoeSize
          : leftShoeSize // ignore: cast_nullable_to_non_nullable
              as double?,
      leftCount: leftCount == freezed
          ? _value.leftCount
          : leftCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClothingProduct implements _ClothingProduct {
  _$_ClothingProduct(
      {required this.image,
      required this.price,
      this.salesPrice,
      required this.brand,
      required this.part,
      this.leftSize,
      this.leftShoeSize,
      this.leftCount});

  factory _$_ClothingProduct.fromJson(Map<String, dynamic> json) =>
      _$$_ClothingProductFromJson(json);

  @override
  final String image;
  @override
  final num price;
  @override
  final num? salesPrice;
  @override
  final String brand;
  @override
  final String part;
  @override
  final ProductSize? leftSize;
  @override
  final double? leftShoeSize;
  @override
  final int? leftCount;

  @override
  String toString() {
    return 'ClothingProduct(image: $image, price: $price, salesPrice: $salesPrice, brand: $brand, part: $part, leftSize: $leftSize, leftShoeSize: $leftShoeSize, leftCount: $leftCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClothingProduct &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.salesPrice, salesPrice) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.part, part) &&
            const DeepCollectionEquality().equals(other.leftSize, leftSize) &&
            const DeepCollectionEquality()
                .equals(other.leftShoeSize, leftShoeSize) &&
            const DeepCollectionEquality().equals(other.leftCount, leftCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(salesPrice),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(part),
      const DeepCollectionEquality().hash(leftSize),
      const DeepCollectionEquality().hash(leftShoeSize),
      const DeepCollectionEquality().hash(leftCount));

  @JsonKey(ignore: true)
  @override
  _$ClothingProductCopyWith<_ClothingProduct> get copyWith =>
      __$ClothingProductCopyWithImpl<_ClothingProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClothingProductToJson(this);
  }
}

abstract class _ClothingProduct implements ClothingProduct {
  factory _ClothingProduct(
      {required final String image,
      required final num price,
      final num? salesPrice,
      required final String brand,
      required final String part,
      final ProductSize? leftSize,
      final double? leftShoeSize,
      final int? leftCount}) = _$_ClothingProduct;

  factory _ClothingProduct.fromJson(Map<String, dynamic> json) =
      _$_ClothingProduct.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  num get price => throw _privateConstructorUsedError;
  @override
  num? get salesPrice => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get part => throw _privateConstructorUsedError;
  @override
  ProductSize? get leftSize => throw _privateConstructorUsedError;
  @override
  double? get leftShoeSize => throw _privateConstructorUsedError;
  @override
  int? get leftCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClothingProductCopyWith<_ClothingProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
