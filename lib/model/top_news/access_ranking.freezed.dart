// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessRanking _$AccessRankingFromJson(Map<String, dynamic> json) {
  return _AccessRanking.fromJson(json);
}

/// @nodoc
mixin _$AccessRanking {
  List<RankingItem> get japanese => throw _privateConstructorUsedError;
  List<RankingItem> get overseas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessRankingCopyWith<AccessRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessRankingCopyWith<$Res> {
  factory $AccessRankingCopyWith(
          AccessRanking value, $Res Function(AccessRanking) then) =
      _$AccessRankingCopyWithImpl<$Res>;
  $Res call({List<RankingItem> japanese, List<RankingItem> overseas});
}

/// @nodoc
class _$AccessRankingCopyWithImpl<$Res>
    implements $AccessRankingCopyWith<$Res> {
  _$AccessRankingCopyWithImpl(this._value, this._then);

  final AccessRanking _value;
  // ignore: unused_field
  final $Res Function(AccessRanking) _then;

  @override
  $Res call({
    Object? japanese = freezed,
    Object? overseas = freezed,
  }) {
    return _then(_value.copyWith(
      japanese: japanese == freezed
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
      overseas: overseas == freezed
          ? _value.overseas
          : overseas // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
    ));
  }
}

/// @nodoc
abstract class _$AccessRankingCopyWith<$Res>
    implements $AccessRankingCopyWith<$Res> {
  factory _$AccessRankingCopyWith(
          _AccessRanking value, $Res Function(_AccessRanking) then) =
      __$AccessRankingCopyWithImpl<$Res>;
  @override
  $Res call({List<RankingItem> japanese, List<RankingItem> overseas});
}

/// @nodoc
class __$AccessRankingCopyWithImpl<$Res>
    extends _$AccessRankingCopyWithImpl<$Res>
    implements _$AccessRankingCopyWith<$Res> {
  __$AccessRankingCopyWithImpl(
      _AccessRanking _value, $Res Function(_AccessRanking) _then)
      : super(_value, (v) => _then(v as _AccessRanking));

  @override
  _AccessRanking get _value => super._value as _AccessRanking;

  @override
  $Res call({
    Object? japanese = freezed,
    Object? overseas = freezed,
  }) {
    return _then(_AccessRanking(
      japanese: japanese == freezed
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
      overseas: overseas == freezed
          ? _value.overseas
          : overseas // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessRanking implements _AccessRanking {
  _$_AccessRanking(
      {required final List<RankingItem> japanese,
      required final List<RankingItem> overseas})
      : _japanese = japanese,
        _overseas = overseas;

  factory _$_AccessRanking.fromJson(Map<String, dynamic> json) =>
      _$$_AccessRankingFromJson(json);

  final List<RankingItem> _japanese;
  @override
  List<RankingItem> get japanese {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_japanese);
  }

  final List<RankingItem> _overseas;
  @override
  List<RankingItem> get overseas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overseas);
  }

  @override
  String toString() {
    return 'AccessRanking(japanese: $japanese, overseas: $overseas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessRanking &&
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
  _$AccessRankingCopyWith<_AccessRanking> get copyWith =>
      __$AccessRankingCopyWithImpl<_AccessRanking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessRankingToJson(this);
  }
}

abstract class _AccessRanking implements AccessRanking {
  factory _AccessRanking(
      {required final List<RankingItem> japanese,
      required final List<RankingItem> overseas}) = _$_AccessRanking;

  factory _AccessRanking.fromJson(Map<String, dynamic> json) =
      _$_AccessRanking.fromJson;

  @override
  List<RankingItem> get japanese => throw _privateConstructorUsedError;
  @override
  List<RankingItem> get overseas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessRankingCopyWith<_AccessRanking> get copyWith =>
      throw _privateConstructorUsedError;
}
