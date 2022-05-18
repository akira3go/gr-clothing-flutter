import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_item.freezed.dart';
part 'category_list_item.g.dart';

@freezed
class CategoryListItem with _$CategoryListItem {
  factory CategoryListItem({
    required String category,
    required int productsCount,
  }) = _CategoryListItem;

  factory CategoryListItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryListItemFromJson(json);
}
