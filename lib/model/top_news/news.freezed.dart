// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  String get image => throw _privateConstructorUsedError;
  @CategoryEnumConverter()
  Category? get category => throw _privateConstructorUsedError;
  @LocationEnumConverter()
  Location? get location => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String image,
      @CategoryEnumConverter() Category? category,
      @LocationEnumConverter() Location? location,
      DateTime dateTime,
      bool isFavorite,
      String body,
      String link});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? category = freezed,
    Object? location = freezed,
    Object? dateTime = freezed,
    Object? isFavorite = freezed,
    Object? body = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      @CategoryEnumConverter() Category? category,
      @LocationEnumConverter() Location? location,
      DateTime dateTime,
      bool isFavorite,
      String body,
      String link});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? image = freezed,
    Object? category = freezed,
    Object? location = freezed,
    Object? dateTime = freezed,
    Object? isFavorite = freezed,
    Object? body = freezed,
    Object? link = freezed,
  }) {
    return _then(_News(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$_News implements _News {
  _$_News(
      {required this.image,
      @CategoryEnumConverter() this.category,
      @LocationEnumConverter() this.location,
      required this.dateTime,
      required this.isFavorite,
      required this.body,
      required this.link});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String image;
  @override
  @CategoryEnumConverter()
  final Category? category;
  @override
  @LocationEnumConverter()
  final Location? location;
  @override
  final DateTime dateTime;
  @override
  final bool isFavorite;
  @override
  final String body;
  @override
  final String link;

  @override
  String toString() {
    return 'News(image: $image, category: $category, location: $location, dateTime: $dateTime, isFavorite: $isFavorite, body: $body, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _News &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
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
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(this);
  }
}

abstract class _News implements News {
  factory _News(
      {required final String image,
      @CategoryEnumConverter() final Category? category,
      @LocationEnumConverter() final Location? location,
      required final DateTime dateTime,
      required final bool isFavorite,
      required final String body,
      required final String link}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @CategoryEnumConverter()
  Category? get category => throw _privateConstructorUsedError;
  @override
  @LocationEnumConverter()
  Location? get location => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
