// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'disc_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscReview _$DiscReviewFromJson(Map<String, dynamic> json) {
  return _DiscReview.fromJson(json);
}

/// @nodoc
mixin _$DiscReview {
  List<DiscReviewItem> get japanese => throw _privateConstructorUsedError;
  List<DiscReviewItem> get overseas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscReviewCopyWith<DiscReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscReviewCopyWith<$Res> {
  factory $DiscReviewCopyWith(
          DiscReview value, $Res Function(DiscReview) then) =
      _$DiscReviewCopyWithImpl<$Res>;
  $Res call({List<DiscReviewItem> japanese, List<DiscReviewItem> overseas});
}

/// @nodoc
class _$DiscReviewCopyWithImpl<$Res> implements $DiscReviewCopyWith<$Res> {
  _$DiscReviewCopyWithImpl(this._value, this._then);

  final DiscReview _value;
  // ignore: unused_field
  final $Res Function(DiscReview) _then;

  @override
  $Res call({
    Object? japanese = freezed,
    Object? overseas = freezed,
  }) {
    return _then(_value.copyWith(
      japanese: japanese == freezed
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as List<DiscReviewItem>,
      overseas: overseas == freezed
          ? _value.overseas
          : overseas // ignore: cast_nullable_to_non_nullable
              as List<DiscReviewItem>,
    ));
  }
}

/// @nodoc
abstract class _$DiscReviewCopyWith<$Res> implements $DiscReviewCopyWith<$Res> {
  factory _$DiscReviewCopyWith(
          _DiscReview value, $Res Function(_DiscReview) then) =
      __$DiscReviewCopyWithImpl<$Res>;
  @override
  $Res call({List<DiscReviewItem> japanese, List<DiscReviewItem> overseas});
}

/// @nodoc
class __$DiscReviewCopyWithImpl<$Res> extends _$DiscReviewCopyWithImpl<$Res>
    implements _$DiscReviewCopyWith<$Res> {
  __$DiscReviewCopyWithImpl(
      _DiscReview _value, $Res Function(_DiscReview) _then)
      : super(_value, (v) => _then(v as _DiscReview));

  @override
  _DiscReview get _value => super._value as _DiscReview;

  @override
  $Res call({
    Object? japanese = freezed,
    Object? overseas = freezed,
  }) {
    return _then(_DiscReview(
      japanese: japanese == freezed
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as List<DiscReviewItem>,
      overseas: overseas == freezed
          ? _value.overseas
          : overseas // ignore: cast_nullable_to_non_nullable
              as List<DiscReviewItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscReview implements _DiscReview {
  _$_DiscReview(
      {required final List<DiscReviewItem> japanese,
      required final List<DiscReviewItem> overseas})
      : _japanese = japanese,
        _overseas = overseas;

  factory _$_DiscReview.fromJson(Map<String, dynamic> json) =>
      _$$_DiscReviewFromJson(json);

  final List<DiscReviewItem> _japanese;
  @override
  List<DiscReviewItem> get japanese {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_japanese);
  }

  final List<DiscReviewItem> _overseas;
  @override
  List<DiscReviewItem> get overseas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overseas);
  }

  @override
  String toString() {
    return 'DiscReview(japanese: $japanese, overseas: $overseas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscReview &&
            const DeepCollectionEquality().equals(other.japanese, japanese) &&
            const DeepCollectionEquality().equals(other.overseas, overseas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(japanese),
      const DeepCollectionEquality().hash(overseas));

  @JsonKey(ignore: true)
  @override
  _$DiscReviewCopyWith<_DiscReview> get copyWith =>
      __$DiscReviewCopyWithImpl<_DiscReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscReviewToJson(this);
  }
}

abstract class _DiscReview implements DiscReview {
  factory _DiscReview(
      {required final List<DiscReviewItem> japanese,
      required final List<DiscReviewItem> overseas}) = _$_DiscReview;

  factory _DiscReview.fromJson(Map<String, dynamic> json) =
      _$_DiscReview.fromJson;

  @override
  List<DiscReviewItem> get japanese => throw _privateConstructorUsedError;
  @override
  List<DiscReviewItem> get overseas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscReviewCopyWith<_DiscReview> get copyWith =>
      throw _privateConstructorUsedError;
}
