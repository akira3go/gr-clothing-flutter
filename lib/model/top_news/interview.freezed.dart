// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Interview _$InterviewFromJson(Map<String, dynamic> json) {
  return _Interview.fromJson(json);
}

/// @nodoc
mixin _$Interview {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterviewCopyWith<Interview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewCopyWith<$Res> {
  factory $InterviewCopyWith(Interview value, $Res Function(Interview) then) =
      _$InterviewCopyWithImpl<$Res>;
  $Res call({String image, bool isFavorite, String title, String link});
}

/// @nodoc
class _$InterviewCopyWithImpl<$Res> implements $InterviewCopyWith<$Res> {
  _$InterviewCopyWithImpl(this._value, this._then);

  final Interview _value;
  // ignore: unused_field
  final $Res Function(Interview) _then;

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
abstract class _$InterviewCopyWith<$Res> implements $InterviewCopyWith<$Res> {
  factory _$InterviewCopyWith(
          _Interview value, $Res Function(_Interview) then) =
      __$InterviewCopyWithImpl<$Res>;
  @override
  $Res call({String image, bool isFavorite, String title, String link});
}

/// @nodoc
class __$InterviewCopyWithImpl<$Res> extends _$InterviewCopyWithImpl<$Res>
    implements _$InterviewCopyWith<$Res> {
  __$InterviewCopyWithImpl(_Interview _value, $Res Function(_Interview) _then)
      : super(_value, (v) => _then(v as _Interview));

  @override
  _Interview get _value => super._value as _Interview;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? link = freezed,
  }) {
    return _then(_Interview(
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
class _$_Interview implements _Interview {
  _$_Interview(
      {required this.image,
      required this.isFavorite,
      required this.title,
      required this.link});

  factory _$_Interview.fromJson(Map<String, dynamic> json) =>
      _$$_InterviewFromJson(json);

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
    return 'Interview(image: $image, isFavorite: $isFavorite, title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Interview &&
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
  _$InterviewCopyWith<_Interview> get copyWith =>
      __$InterviewCopyWithImpl<_Interview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterviewToJson(this);
  }
}

abstract class _Interview implements Interview {
  factory _Interview(
      {required final String image,
      required final bool isFavorite,
      required final String title,
      required final String link}) = _$_Interview;

  factory _Interview.fromJson(Map<String, dynamic> json) =
      _$_Interview.fromJson;

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
  _$InterviewCopyWith<_Interview> get copyWith =>
      throw _privateConstructorUsedError;
}
