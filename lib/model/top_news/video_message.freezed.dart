// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoMessage _$VideoMessageFromJson(Map<String, dynamic> json) {
  return _VideoMessage.fromJson(json);
}

/// @nodoc
mixin _$VideoMessage {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoMessageCopyWith<VideoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoMessageCopyWith<$Res> {
  factory $VideoMessageCopyWith(
          VideoMessage value, $Res Function(VideoMessage) then) =
      _$VideoMessageCopyWithImpl<$Res>;
  $Res call({String image, bool isFavorite, String artistName, String link});
}

/// @nodoc
class _$VideoMessageCopyWithImpl<$Res> implements $VideoMessageCopyWith<$Res> {
  _$VideoMessageCopyWithImpl(this._value, this._then);

  final VideoMessage _value;
  // ignore: unused_field
  final $Res Function(VideoMessage) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? artistName = freezed,
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
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoMessageCopyWith<$Res>
    implements $VideoMessageCopyWith<$Res> {
  factory _$$_VideoMessageCopyWith(
          _$_VideoMessage value, $Res Function(_$_VideoMessage) then) =
      __$$_VideoMessageCopyWithImpl<$Res>;
  @override
  $Res call({String image, bool isFavorite, String artistName, String link});
}

/// @nodoc
class __$$_VideoMessageCopyWithImpl<$Res>
    extends _$VideoMessageCopyWithImpl<$Res>
    implements _$$_VideoMessageCopyWith<$Res> {
  __$$_VideoMessageCopyWithImpl(
      _$_VideoMessage _value, $Res Function(_$_VideoMessage) _then)
      : super(_value, (v) => _then(v as _$_VideoMessage));

  @override
  _$_VideoMessage get _value => super._value as _$_VideoMessage;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? artistName = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_VideoMessage(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
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
class _$_VideoMessage implements _VideoMessage {
  _$_VideoMessage(
      {required this.image,
      required this.isFavorite,
      required this.artistName,
      required this.link});

  factory _$_VideoMessage.fromJson(Map<String, dynamic> json) =>
      _$$_VideoMessageFromJson(json);

  @override
  final String image;
  @override
  final bool isFavorite;
  @override
  final String artistName;
  @override
  final String link;

  @override
  String toString() {
    return 'VideoMessage(image: $image, isFavorite: $isFavorite, artistName: $artistName, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoMessage &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(artistName),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_VideoMessageCopyWith<_$_VideoMessage> get copyWith =>
      __$$_VideoMessageCopyWithImpl<_$_VideoMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoMessageToJson(this);
  }
}

abstract class _VideoMessage implements VideoMessage {
  factory _VideoMessage(
      {required final String image,
      required final bool isFavorite,
      required final String artistName,
      required final String link}) = _$_VideoMessage;

  factory _VideoMessage.fromJson(Map<String, dynamic> json) =
      _$_VideoMessage.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VideoMessageCopyWith<_$_VideoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
