// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'disc_review_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscReviewItem _$DiscReviewItemFromJson(Map<String, dynamic> json) {
  return _DiscReviewItem.fromJson(json);
}

/// @nodoc
mixin _$DiscReviewItem {
  String get image => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscReviewItemCopyWith<DiscReviewItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscReviewItemCopyWith<$Res> {
  factory $DiscReviewItemCopyWith(
          DiscReviewItem value, $Res Function(DiscReviewItem) then) =
      _$DiscReviewItemCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String artistName,
      bool isFavorite,
      String name,
      String link});
}

/// @nodoc
class _$DiscReviewItemCopyWithImpl<$Res>
    implements $DiscReviewItemCopyWith<$Res> {
  _$DiscReviewItemCopyWithImpl(this._value, this._then);

  final DiscReviewItem _value;
  // ignore: unused_field
  final $Res Function(DiscReviewItem) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? artistName = freezed,
    Object? isFavorite = freezed,
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscReviewItemCopyWith<$Res>
    implements $DiscReviewItemCopyWith<$Res> {
  factory _$DiscReviewItemCopyWith(
          _DiscReviewItem value, $Res Function(_DiscReviewItem) then) =
      __$DiscReviewItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String artistName,
      bool isFavorite,
      String name,
      String link});
}

/// @nodoc
class __$DiscReviewItemCopyWithImpl<$Res>
    extends _$DiscReviewItemCopyWithImpl<$Res>
    implements _$DiscReviewItemCopyWith<$Res> {
  __$DiscReviewItemCopyWithImpl(
      _DiscReviewItem _value, $Res Function(_DiscReviewItem) _then)
      : super(_value, (v) => _then(v as _DiscReviewItem));

  @override
  _DiscReviewItem get _value => super._value as _DiscReviewItem;

  @override
  $Res call({
    Object? image = freezed,
    Object? artistName = freezed,
    Object? isFavorite = freezed,
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_DiscReviewItem(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscReviewItem implements _DiscReviewItem {
  _$_DiscReviewItem(
      {required this.image,
      required this.artistName,
      required this.isFavorite,
      required this.name,
      required this.link});

  factory _$_DiscReviewItem.fromJson(Map<String, dynamic> json) =>
      _$$_DiscReviewItemFromJson(json);

  @override
  final String image;
  @override
  final String artistName;
  @override
  final bool isFavorite;
  @override
  final String name;
  @override
  final String link;

  @override
  String toString() {
    return 'DiscReviewItem(image: $image, artistName: $artistName, isFavorite: $isFavorite, name: $name, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscReviewItem &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(artistName),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$DiscReviewItemCopyWith<_DiscReviewItem> get copyWith =>
      __$DiscReviewItemCopyWithImpl<_DiscReviewItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscReviewItemToJson(this);
  }
}

abstract class _DiscReviewItem implements DiscReviewItem {
  factory _DiscReviewItem(
      {required final String image,
      required final String artistName,
      required final bool isFavorite,
      required final String name,
      required final String link}) = _$_DiscReviewItem;

  factory _DiscReviewItem.fromJson(Map<String, dynamic> json) =
      _$_DiscReviewItem.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscReviewItemCopyWith<_DiscReviewItem> get copyWith =>
      throw _privateConstructorUsedError;
}
