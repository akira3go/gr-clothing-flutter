// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopImage _$TopImageFromJson(Map<String, dynamic> json) {
  return _TopImage.fromJson(json);
}

/// @nodoc
mixin _$TopImage {
  String get image => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopImageCopyWith<TopImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopImageCopyWith<$Res> {
  factory $TopImageCopyWith(TopImage value, $Res Function(TopImage) then) =
      _$TopImageCopyWithImpl<$Res>;
  $Res call({String image, String link});
}

/// @nodoc
class _$TopImageCopyWithImpl<$Res> implements $TopImageCopyWith<$Res> {
  _$TopImageCopyWithImpl(this._value, this._then);

  final TopImage _value;
  // ignore: unused_field
  final $Res Function(TopImage) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TopImageCopyWith<$Res> implements $TopImageCopyWith<$Res> {
  factory _$TopImageCopyWith(_TopImage value, $Res Function(_TopImage) then) =
      __$TopImageCopyWithImpl<$Res>;
  @override
  $Res call({String image, String link});
}

/// @nodoc
class __$TopImageCopyWithImpl<$Res> extends _$TopImageCopyWithImpl<$Res>
    implements _$TopImageCopyWith<$Res> {
  __$TopImageCopyWithImpl(_TopImage _value, $Res Function(_TopImage) _then)
      : super(_value, (v) => _then(v as _TopImage));

  @override
  _TopImage get _value => super._value as _TopImage;

  @override
  $Res call({
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_TopImage(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_TopImage implements _TopImage {
  _$_TopImage({required this.image, required this.link});

  factory _$_TopImage.fromJson(Map<String, dynamic> json) =>
      _$$_TopImageFromJson(json);

  @override
  final String image;
  @override
  final String link;

  @override
  String toString() {
    return 'TopImage(image: $image, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopImage &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$TopImageCopyWith<_TopImage> get copyWith =>
      __$TopImageCopyWithImpl<_TopImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopImageToJson(this);
  }
}

abstract class _TopImage implements TopImage {
  factory _TopImage({required final String image, required final String link}) =
      _$_TopImage;

  factory _TopImage.fromJson(Map<String, dynamic> json) = _$_TopImage.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopImageCopyWith<_TopImage> get copyWith =>
      throw _privateConstructorUsedError;
}
