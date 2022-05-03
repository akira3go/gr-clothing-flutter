// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'music_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicVideo _$MusicVideoFromJson(Map<String, dynamic> json) {
  return _MusicVideo.fromJson(json);
}

/// @nodoc
mixin _$MusicVideo {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get playbackTime => throw _privateConstructorUsedError;
  String get playCount => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicVideoCopyWith<MusicVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicVideoCopyWith<$Res> {
  factory $MusicVideoCopyWith(
          MusicVideo value, $Res Function(MusicVideo) then) =
      _$MusicVideoCopyWithImpl<$Res>;
  $Res call(
      {String image,
      bool isFavorite,
      String title,
      String playbackTime,
      String playCount,
      String link});
}

/// @nodoc
class _$MusicVideoCopyWithImpl<$Res> implements $MusicVideoCopyWith<$Res> {
  _$MusicVideoCopyWithImpl(this._value, this._then);

  final MusicVideo _value;
  // ignore: unused_field
  final $Res Function(MusicVideo) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? playbackTime = freezed,
    Object? playCount = freezed,
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
      playbackTime: playbackTime == freezed
          ? _value.playbackTime
          : playbackTime // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: playCount == freezed
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MusicVideoCopyWith<$Res> implements $MusicVideoCopyWith<$Res> {
  factory _$MusicVideoCopyWith(
          _MusicVideo value, $Res Function(_MusicVideo) then) =
      __$MusicVideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      bool isFavorite,
      String title,
      String playbackTime,
      String playCount,
      String link});
}

/// @nodoc
class __$MusicVideoCopyWithImpl<$Res> extends _$MusicVideoCopyWithImpl<$Res>
    implements _$MusicVideoCopyWith<$Res> {
  __$MusicVideoCopyWithImpl(
      _MusicVideo _value, $Res Function(_MusicVideo) _then)
      : super(_value, (v) => _then(v as _MusicVideo));

  @override
  _MusicVideo get _value => super._value as _MusicVideo;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? playbackTime = freezed,
    Object? playCount = freezed,
    Object? link = freezed,
  }) {
    return _then(_MusicVideo(
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
      playbackTime: playbackTime == freezed
          ? _value.playbackTime
          : playbackTime // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: playCount == freezed
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
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
class _$_MusicVideo implements _MusicVideo {
  _$_MusicVideo(
      {required this.image,
      required this.isFavorite,
      required this.title,
      required this.playbackTime,
      required this.playCount,
      required this.link});

  factory _$_MusicVideo.fromJson(Map<String, dynamic> json) =>
      _$$_MusicVideoFromJson(json);

  @override
  final String image;
  @override
  final bool isFavorite;
  @override
  final String title;
  @override
  final String playbackTime;
  @override
  final String playCount;
  @override
  final String link;

  @override
  String toString() {
    return 'MusicVideo(image: $image, isFavorite: $isFavorite, title: $title, playbackTime: $playbackTime, playCount: $playCount, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MusicVideo &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.playbackTime, playbackTime) &&
            const DeepCollectionEquality().equals(other.playCount, playCount) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(playbackTime),
      const DeepCollectionEquality().hash(playCount),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$MusicVideoCopyWith<_MusicVideo> get copyWith =>
      __$MusicVideoCopyWithImpl<_MusicVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicVideoToJson(this);
  }
}

abstract class _MusicVideo implements MusicVideo {
  factory _MusicVideo(
      {required final String image,
      required final bool isFavorite,
      required final String title,
      required final String playbackTime,
      required final String playCount,
      required final String link}) = _$_MusicVideo;

  factory _MusicVideo.fromJson(Map<String, dynamic> json) =
      _$_MusicVideo.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get playbackTime => throw _privateConstructorUsedError;
  @override
  String get playCount => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MusicVideoCopyWith<_MusicVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
