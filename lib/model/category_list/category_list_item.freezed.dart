// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryListItem _$CategoryListItemFromJson(Map<String, dynamic> json) {
  return _CategoryListItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryListItem {
  String get category => throw _privateConstructorUsedError;
  int get productsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListItemCopyWith<CategoryListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListItemCopyWith<$Res> {
  factory $CategoryListItemCopyWith(
          CategoryListItem value, $Res Function(CategoryListItem) then) =
      _$CategoryListItemCopyWithImpl<$Res>;
  $Res call({String category, int productsCount});
}

/// @nodoc
class _$CategoryListItemCopyWithImpl<$Res>
    implements $CategoryListItemCopyWith<$Res> {
  _$CategoryListItemCopyWithImpl(this._value, this._then);

  final CategoryListItem _value;
  // ignore: unused_field
  final $Res Function(CategoryListItem) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? productsCount = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productsCount: productsCount == freezed
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CategoryListItemCopyWith<$Res>
    implements $CategoryListItemCopyWith<$Res> {
  factory _$CategoryListItemCopyWith(
          _CategoryListItem value, $Res Function(_CategoryListItem) then) =
      __$CategoryListItemCopyWithImpl<$Res>;
  @override
  $Res call({String category, int productsCount});
}

/// @nodoc
class __$CategoryListItemCopyWithImpl<$Res>
    extends _$CategoryListItemCopyWithImpl<$Res>
    implements _$CategoryListItemCopyWith<$Res> {
  __$CategoryListItemCopyWithImpl(
      _CategoryListItem _value, $Res Function(_CategoryListItem) _then)
      : super(_value, (v) => _then(v as _CategoryListItem));

  @override
  _CategoryListItem get _value => super._value as _CategoryListItem;

  @override
  $Res call({
    Object? category = freezed,
    Object? productsCount = freezed,
  }) {
    return _then(_CategoryListItem(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      productsCount: productsCount == freezed
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryListItem implements _CategoryListItem {
  _$_CategoryListItem({required this.category, required this.productsCount});

  factory _$_CategoryListItem.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryListItemFromJson(json);

  @override
  final String category;
  @override
  final int productsCount;

  @override
  String toString() {
    return 'CategoryListItem(category: $category, productsCount: $productsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryListItem &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.productsCount, productsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(productsCount));

  @JsonKey(ignore: true)
  @override
  _$CategoryListItemCopyWith<_CategoryListItem> get copyWith =>
      __$CategoryListItemCopyWithImpl<_CategoryListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryListItemToJson(this);
  }
}

abstract class _CategoryListItem implements CategoryListItem {
  factory _CategoryListItem(
      {required final String category,
      required final int productsCount}) = _$_CategoryListItem;

  factory _CategoryListItem.fromJson(Map<String, dynamic> json) =
      _$_CategoryListItem.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  int get productsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryListItemCopyWith<_CategoryListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
