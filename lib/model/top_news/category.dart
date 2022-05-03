import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:flutter/material.dart';

enum Category {
  artist,
  live,
  release,
  gekirock,
  update
}

class CategoryEnumConverter implements JsonConverter<Category?, String?> {
  const CategoryEnumConverter();

  @override
  Category? fromJson(String? json) => EnumToString.fromString(
    Category.values,
    json ?? '',
  );

  @override
  String? toJson(Category? object) =>
      object == null ? null : EnumToString.convertToString(object);
}

enum Location {
  Japanese,
  Overseas
}

extension LocationExtension on Location {
  Color get color {
    switch (this) {
      case Location.Japanese:
        return ColorName.japanese;
      case Location.Overseas:
        return ColorName.overseas;
    }
  }
}

class LocationEnumConverter implements JsonConverter<Location?, String?> {
  const LocationEnumConverter();

  @override
  Location? fromJson(String? json) => EnumToString.fromString(
    Location.values,
    json ?? '',
  );

  @override
  String? toJson(Location? object) =>
      object == null ? null : EnumToString.convertToString(object);
}