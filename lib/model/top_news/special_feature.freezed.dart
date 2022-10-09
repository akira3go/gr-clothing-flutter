// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'special_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialFeature _$SpecialFeatureFromJson(Map<String, dynamic> json) {
  return _SpecialFeature.fromJson(json);
}

/// @nodoc
mixin _$SpecialFeature {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialFeatureCopyWith<SpecialFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialFeatureCopyWith<$Res> {
  factory $SpecialFeatureCopyWith(
          SpecialFeature value, $Res Function(SpecialFeature) then) =
      _$SpecialFeatureCopyWithImpl<$Res>;
  $Res call({String image, bool isFavorite, String title, String link});
}

/// @nodoc
class _$SpecialFeatureCopyWithImpl<$Res>
    implements $SpecialFeatureCopyWith<$Res> {
  _$SpecialFeatureCopyWithImpl(this._value, this._then);

  final SpecialFeature _value;
  // ignore: unused_field
  final $Res Function(SpecialFeature) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecialFeatureCopyWith<$Res>
    implements $SpecialFeatureCopyWith<$Res> {
  factory _$$_SpecialFeatureCopyWith(
          _$_SpecialFeature value, $Res Function(_$_SpecialFeature) then) =
      __$$_SpecialFeatureCopyWithImpl<$Res>;
  @override
  $Res call({String image, bool isFavorite, String title, String link});
}

/// @nodoc
class __$$_SpecialFeatureCopyWithImpl<$Res>
    extends _$SpecialFeatureCopyWithImpl<$Res>
    implements _$$_SpecialFeatureCopyWith<$Res> {
  __$$_SpecialFeatureCopyWithImpl(
      _$_SpecialFeature _value, $Res Function(_$_SpecialFeature) _then)
      : super(_value, (v) => _then(v as _$_SpecialFeature));

  @override
  _$_SpecialFeature get _value => super._value as _$_SpecialFeature;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_SpecialFeature(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_SpecialFeature implements _SpecialFeature {
  _$_SpecialFeature(
      {required this.image,
      required this.isFavorite,
      required this.title,
      required this.link});

  factory _$_SpecialFeature.fromJson(Map<String, dynamic> json) =>
      _$$_SpecialFeatureFromJson(json);

  @override
  final String image;
  @override
  final bool isFavorite;
  @override
  final String title;
  @override
  final String link;

  @override
  String toString() {
    return 'SpecialFeature(image: $image, isFavorite: $isFavorite, title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecialFeature &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_SpecialFeatureCopyWith<_$_SpecialFeature> get copyWith =>
      __$$_SpecialFeatureCopyWithImpl<_$_SpecialFeature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecialFeatureToJson(this);
  }
}

abstract class _SpecialFeature implements SpecialFeature {
  factory _SpecialFeature(
      {required final String image,
      required final bool isFavorite,
      required final String title,
      required final String link}) = _$_SpecialFeature;

  factory _SpecialFeature.fromJson(Map<String, dynamic> json) =
      _$_SpecialFeature.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialFeatureCopyWith<_$_SpecialFeature> get copyWith =>
      throw _privateConstructorUsedError;
}
