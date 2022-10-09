// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ranking_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RankingItem _$RankingItemFromJson(Map<String, dynamic> json) {
  return _RankingItem.fromJson(json);
}

/// @nodoc
mixin _$RankingItem {
  String get body => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingItemCopyWith<RankingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingItemCopyWith<$Res> {
  factory $RankingItemCopyWith(
          RankingItem value, $Res Function(RankingItem) then) =
      _$RankingItemCopyWithImpl<$Res>;
  $Res call({String body, bool isFavorite, String link});
}

/// @nodoc
class _$RankingItemCopyWithImpl<$Res> implements $RankingItemCopyWith<$Res> {
  _$RankingItemCopyWithImpl(this._value, this._then);

  final RankingItem _value;
  // ignore: unused_field
  final $Res Function(RankingItem) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? isFavorite = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RankingItemCopyWith<$Res>
    implements $RankingItemCopyWith<$Res> {
  factory _$$_RankingItemCopyWith(
          _$_RankingItem value, $Res Function(_$_RankingItem) then) =
      __$$_RankingItemCopyWithImpl<$Res>;
  @override
  $Res call({String body, bool isFavorite, String link});
}

/// @nodoc
class __$$_RankingItemCopyWithImpl<$Res> extends _$RankingItemCopyWithImpl<$Res>
    implements _$$_RankingItemCopyWith<$Res> {
  __$$_RankingItemCopyWithImpl(
      _$_RankingItem _value, $Res Function(_$_RankingItem) _then)
      : super(_value, (v) => _then(v as _$_RankingItem));

  @override
  _$_RankingItem get _value => super._value as _$_RankingItem;

  @override
  $Res call({
    Object? body = freezed,
    Object? isFavorite = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_RankingItem(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RankingItem implements _RankingItem {
  _$_RankingItem(
      {required this.body, required this.isFavorite, required this.link});

  factory _$_RankingItem.fromJson(Map<String, dynamic> json) =>
      _$$_RankingItemFromJson(json);

  @override
  final String body;
  @override
  final bool isFavorite;
  @override
  final String link;

  @override
  String toString() {
    return 'RankingItem(body: $body, isFavorite: $isFavorite, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RankingItem &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_RankingItemCopyWith<_$_RankingItem> get copyWith =>
      __$$_RankingItemCopyWithImpl<_$_RankingItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RankingItemToJson(this);
  }
}

abstract class _RankingItem implements RankingItem {
  factory _RankingItem(
      {required final String body,
      required final bool isFavorite,
      required final String link}) = _$_RankingItem;

  factory _RankingItem.fromJson(Map<String, dynamic> json) =
      _$_RankingItem.fromJson;

  @override
  String get body => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RankingItemCopyWith<_$_RankingItem> get copyWith =>
      throw _privateConstructorUsedError;
}
