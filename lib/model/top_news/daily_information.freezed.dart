// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyInformation _$DailyInformationFromJson(Map<String, dynamic> json) {
  return _DailyInformation.fromJson(json);
}

/// @nodoc
mixin _$DailyInformation {
  DateTime get date => throw _privateConstructorUsedError;
  List<ArtistInformation> get information => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyInformationCopyWith<DailyInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyInformationCopyWith<$Res> {
  factory $DailyInformationCopyWith(
          DailyInformation value, $Res Function(DailyInformation) then) =
      _$DailyInformationCopyWithImpl<$Res>;
  $Res call({DateTime date, List<ArtistInformation> information});
}

/// @nodoc
class _$DailyInformationCopyWithImpl<$Res>
    implements $DailyInformationCopyWith<$Res> {
  _$DailyInformationCopyWithImpl(this._value, this._then);

  final DailyInformation _value;
  // ignore: unused_field
  final $Res Function(DailyInformation) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? information = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as List<ArtistInformation>,
    ));
  }
}

/// @nodoc
abstract class _$$_DailyInformationCopyWith<$Res>
    implements $DailyInformationCopyWith<$Res> {
  factory _$$_DailyInformationCopyWith(
          _$_DailyInformation value, $Res Function(_$_DailyInformation) then) =
      __$$_DailyInformationCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, List<ArtistInformation> information});
}

/// @nodoc
class __$$_DailyInformationCopyWithImpl<$Res>
    extends _$DailyInformationCopyWithImpl<$Res>
    implements _$$_DailyInformationCopyWith<$Res> {
  __$$_DailyInformationCopyWithImpl(
      _$_DailyInformation _value, $Res Function(_$_DailyInformation) _then)
      : super(_value, (v) => _then(v as _$_DailyInformation));

  @override
  _$_DailyInformation get _value => super._value as _$_DailyInformation;

  @override
  $Res call({
    Object? date = freezed,
    Object? information = freezed,
  }) {
    return _then(_$_DailyInformation(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      information: information == freezed
          ? _value._information
          : information // ignore: cast_nullable_to_non_nullable
              as List<ArtistInformation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyInformation implements _DailyInformation {
  _$_DailyInformation(
      {required this.date, required final List<ArtistInformation> information})
      : _information = information;

  factory _$_DailyInformation.fromJson(Map<String, dynamic> json) =>
      _$$_DailyInformationFromJson(json);

  @override
  final DateTime date;
  final List<ArtistInformation> _information;
  @override
  List<ArtistInformation> get information {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_information);
  }

  @override
  String toString() {
    return 'DailyInformation(date: $date, information: $information)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyInformation &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other._information, _information));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(_information));

  @JsonKey(ignore: true)
  @override
  _$$_DailyInformationCopyWith<_$_DailyInformation> get copyWith =>
      __$$_DailyInformationCopyWithImpl<_$_DailyInformation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyInformationToJson(this);
  }
}

abstract class _DailyInformation implements DailyInformation {
  factory _DailyInformation(
          {required final DateTime date,
          required final List<ArtistInformation> information}) =
      _$_DailyInformation;

  factory _DailyInformation.fromJson(Map<String, dynamic> json) =
      _$_DailyInformation.fromJson;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  List<ArtistInformation> get information => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DailyInformationCopyWith<_$_DailyInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
