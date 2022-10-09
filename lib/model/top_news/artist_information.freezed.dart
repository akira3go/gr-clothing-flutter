// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistInformation _$ArtistInformationFromJson(Map<String, dynamic> json) {
  return _ArtistInformation.fromJson(json);
}

/// @nodoc
mixin _$ArtistInformation {
  String get name => throw _privateConstructorUsedError;
  @LocationEnumConverter()
  Location? get location => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistInformationCopyWith<ArtistInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistInformationCopyWith<$Res> {
  factory $ArtistInformationCopyWith(
          ArtistInformation value, $Res Function(ArtistInformation) then) =
      _$ArtistInformationCopyWithImpl<$Res>;
  $Res call(
      {String name, @LocationEnumConverter() Location? location, String link});
}

/// @nodoc
class _$ArtistInformationCopyWithImpl<$Res>
    implements $ArtistInformationCopyWith<$Res> {
  _$ArtistInformationCopyWithImpl(this._value, this._then);

  final ArtistInformation _value;
  // ignore: unused_field
  final $Res Function(ArtistInformation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ArtistInformationCopyWith<$Res>
    implements $ArtistInformationCopyWith<$Res> {
  factory _$$_ArtistInformationCopyWith(_$_ArtistInformation value,
          $Res Function(_$_ArtistInformation) then) =
      __$$_ArtistInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, @LocationEnumConverter() Location? location, String link});
}

/// @nodoc
class __$$_ArtistInformationCopyWithImpl<$Res>
    extends _$ArtistInformationCopyWithImpl<$Res>
    implements _$$_ArtistInformationCopyWith<$Res> {
  __$$_ArtistInformationCopyWithImpl(
      _$_ArtistInformation _value, $Res Function(_$_ArtistInformation) _then)
      : super(_value, (v) => _then(v as _$_ArtistInformation));

  @override
  _$_ArtistInformation get _value => super._value as _$_ArtistInformation;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_ArtistInformation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistInformation implements _ArtistInformation {
  _$_ArtistInformation(
      {required this.name,
      @LocationEnumConverter() this.location,
      required this.link});

  factory _$_ArtistInformation.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistInformationFromJson(json);

  @override
  final String name;
  @override
  @LocationEnumConverter()
  final Location? location;
  @override
  final String link;

  @override
  String toString() {
    return 'ArtistInformation(name: $name, location: $location, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistInformation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_ArtistInformationCopyWith<_$_ArtistInformation> get copyWith =>
      __$$_ArtistInformationCopyWithImpl<_$_ArtistInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistInformationToJson(this);
  }
}

abstract class _ArtistInformation implements ArtistInformation {
  factory _ArtistInformation(
      {required final String name,
      @LocationEnumConverter() final Location? location,
      required final String link}) = _$_ArtistInformation;

  factory _ArtistInformation.fromJson(Map<String, dynamic> json) =
      _$_ArtistInformation.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @LocationEnumConverter()
  Location? get location => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistInformationCopyWith<_$_ArtistInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
