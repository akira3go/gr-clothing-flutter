// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'live_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveReport _$LiveReportFromJson(Map<String, dynamic> json) {
  return _LiveReport.fromJson(json);
}

/// @nodoc
mixin _$LiveReport {
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveReportCopyWith<LiveReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveReportCopyWith<$Res> {
  factory $LiveReportCopyWith(
          LiveReport value, $Res Function(LiveReport) then) =
      _$LiveReportCopyWithImpl<$Res>;
  $Res call(
      {String image,
      bool isFavorite,
      String title,
      DateTime date,
      String placeName,
      String link});
}

/// @nodoc
class _$LiveReportCopyWithImpl<$Res> implements $LiveReportCopyWith<$Res> {
  _$LiveReportCopyWithImpl(this._value, this._then);

  final LiveReport _value;
  // ignore: unused_field
  final $Res Function(LiveReport) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? placeName = freezed,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LiveReportCopyWith<$Res>
    implements $LiveReportCopyWith<$Res> {
  factory _$$_LiveReportCopyWith(
          _$_LiveReport value, $Res Function(_$_LiveReport) then) =
      __$$_LiveReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      bool isFavorite,
      String title,
      DateTime date,
      String placeName,
      String link});
}

/// @nodoc
class __$$_LiveReportCopyWithImpl<$Res> extends _$LiveReportCopyWithImpl<$Res>
    implements _$$_LiveReportCopyWith<$Res> {
  __$$_LiveReportCopyWithImpl(
      _$_LiveReport _value, $Res Function(_$_LiveReport) _then)
      : super(_value, (v) => _then(v as _$_LiveReport));

  @override
  _$_LiveReport get _value => super._value as _$_LiveReport;

  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? placeName = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_LiveReport(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
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
class _$_LiveReport implements _LiveReport {
  _$_LiveReport(
      {required this.image,
      required this.isFavorite,
      required this.title,
      required this.date,
      required this.placeName,
      required this.link});

  factory _$_LiveReport.fromJson(Map<String, dynamic> json) =>
      _$$_LiveReportFromJson(json);

  @override
  final String image;
  @override
  final bool isFavorite;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String placeName;
  @override
  final String link;

  @override
  String toString() {
    return 'LiveReport(image: $image, isFavorite: $isFavorite, title: $title, date: $date, placeName: $placeName, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveReport &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.placeName, placeName) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(placeName),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_LiveReportCopyWith<_$_LiveReport> get copyWith =>
      __$$_LiveReportCopyWithImpl<_$_LiveReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveReportToJson(this);
  }
}

abstract class _LiveReport implements LiveReport {
  factory _LiveReport(
      {required final String image,
      required final bool isFavorite,
      required final String title,
      required final DateTime date,
      required final String placeName,
      required final String link}) = _$_LiveReport;

  factory _LiveReport.fromJson(Map<String, dynamic> json) =
      _$_LiveReport.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String get placeName => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LiveReportCopyWith<_$_LiveReport> get copyWith =>
      throw _privateConstructorUsedError;
}
