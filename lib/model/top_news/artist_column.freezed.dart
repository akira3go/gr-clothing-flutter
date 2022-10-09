// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistColumn _$ArtistColumnFromJson(Map<String, dynamic> json) {
  return _ArtistColumn.fromJson(json);
}

/// @nodoc
mixin _$ArtistColumn {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistColumnCopyWith<ArtistColumn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistColumnCopyWith<$Res> {
  factory $ArtistColumnCopyWith(
          ArtistColumn value, $Res Function(ArtistColumn) then) =
      _$ArtistColumnCopyWithImpl<$Res>;
  $Res call({String image, bool isFavorite, String body, String link});
}

/// @nodoc
class _$ArtistColumnCopyWithImpl<$Res> implements $ArtistColumnCopyWith<$Res> {
  _$ArtistColumnCopyWithImpl(this._value, this._then);

  final ArtistColumn _value;
  // ignore: unused_field
  final $Res Function(ArtistColumn) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? body = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ArtistColumnCopyWith<$Res>
    implements $ArtistColumnCopyWith<$Res> {
  factory _$$_ArtistColumnCopyWith(
          _$_ArtistColumn value, $Res Function(_$_ArtistColumn) then) =
      __$$_ArtistColumnCopyWithImpl<$Res>;
  @override
  $Res call({String image, bool isFavorite, String body, String link});
}

/// @nodoc
class __$$_ArtistColumnCopyWithImpl<$Res>
    extends _$ArtistColumnCopyWithImpl<$Res>
    implements _$$_ArtistColumnCopyWith<$Res> {
  __$$_ArtistColumnCopyWithImpl(
      _$_ArtistColumn _value, $Res Function(_$_ArtistColumn) _then)
      : super(_value, (v) => _then(v as _$_ArtistColumn));

  @override
  _$_ArtistColumn get _value => super._value as _$_ArtistColumn;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? body = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_ArtistColumn(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
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
class _$_ArtistColumn implements _ArtistColumn {
  _$_ArtistColumn(
      {required this.image,
      required this.isFavorite,
      required this.body,
      required this.link});

  factory _$_ArtistColumn.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistColumnFromJson(json);

  @override
  final String image;
  @override
  final bool isFavorite;
  @override
  final String body;
  @override
  final String link;

  @override
  String toString() {
    return 'ArtistColumn(image: $image, isFavorite: $isFavorite, body: $body, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistColumn &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_ArtistColumnCopyWith<_$_ArtistColumn> get copyWith =>
      __$$_ArtistColumnCopyWithImpl<_$_ArtistColumn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistColumnToJson(this);
  }
}

abstract class _ArtistColumn implements ArtistColumn {
  factory _ArtistColumn(
      {required final String image,
      required final bool isFavorite,
      required final String body,
      required final String link}) = _$_ArtistColumn;

  factory _ArtistColumn.fromJson(Map<String, dynamic> json) =
      _$_ArtistColumn.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistColumnCopyWith<_$_ArtistColumn> get copyWith =>
      throw _privateConstructorUsedError;
}
