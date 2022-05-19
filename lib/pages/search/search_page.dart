import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/search/search_container_widget.dart';
import 'package:gr_clothing_flutter/pages/search/search_page_state.dart';
import 'package:gr_clothing_flutter/pages/search/search_page_view_model.dart';
import 'package:gr_clothing_flutter/utils/widget/custom_radio_button.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController(
      text: ref.read(searchPageViewModel).keyword,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
        actions: [
          TextButton(
            onPressed: () {
              controller.text = "";
              ref.read(searchPageViewModel.notifier).reset();
            },
            child: const Text("リセット", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(Icons.search_rounded, size: 40),
        backgroundColor: ColorName.skyDeepBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  ref.read(searchPageViewModel.notifier).keyword = value;
                },
                controller: controller,
                decoration: InputDecoration(
                  hintText: "キーワードを入力してください",
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(searchPageViewModel.notifier).keyword = "";
                      controller.text = "";
                    },
                    icon: const Icon(
                      Icons.highlight_remove_rounded,
                      color: ColorName.gray,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              _sizeWidget(ref),
              const SizedBox(height: 10),
              _categoryWidget(ref),
              const SizedBox(height: 10),
              _colorWidget(ref),
              const SizedBox(height: 10),
              _priceWidget(ref),
              const SizedBox(height: 10),
              _saleWidget(ref),
              const SizedBox(height: 10),
              _reservedWidget(ref),
              const SizedBox(height: 10),
              _displaySortWidget(ref),
              const SizedBox(height: 10),
              _displayItemsCountWidget(ref),
              const SizedBox(height: 10),
              _otherWidget(ref),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }

  /// その他
  Widget _otherWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "その他",
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: Row(
              children: [
                const Expanded(child: Text("完売を含む")),
                Switch(
                  value: ref.watch(searchPageViewModel
                      .select((value) => value.includeSoldOut)),
                  onChanged: (value) {
                    ref.read(searchPageViewModel.notifier).includeSoldOut =
                        value;
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Row(
              children: [
                const Expanded(child: Text("動画掲載のみ")),
                Switch(
                  value: ref.watch(searchPageViewModel
                      .select((value) => value.includeVideoPosting)),
                  onChanged: (value) {
                    ref.read(searchPageViewModel.notifier).includeVideoPosting =
                        value;
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// サイズ
  Widget _sizeWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "サイズ",
      child: Wrap(
        children: ProductSize.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.productSize)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).productSize = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// カテゴリー
  Widget _categoryWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "カテゴリー",
      child: Wrap(
        children: ProductCategory.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.productCategory)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).productCategory = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// カラー
  Widget _colorWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "カラー",
      child: Wrap(
        children: ProductColor.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.productColor)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).productColor = value;
              },
              image: value.image?.image(width: 15, height: 15),
            );
          },
        ).toList(),
      ),
    );
  }

  /// 価格帯
  Widget _priceWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "価格帯",
      child: Wrap(
        children: PriceRange.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.priceRange)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).priceRange = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// セール
  Widget _saleWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "セール",
      child: Wrap(
        children: SaleProduct.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.saleProduct)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).saleProduct = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// 予約商品
  Widget _reservedWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "予約商品",
      child: Wrap(
        children: ReserveProduct.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.reserveProduct)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).reserveProduct = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// 表示順
  Widget _displaySortWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "表示順",
      child: Wrap(
        children: DisplaySort.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(
                  searchPageViewModel.select((value) => value.displaySort)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).displaySort = value;
              },
            );
          },
        ).toList(),
      ),
    );
  }

  /// 表示件数
  Widget _displayItemsCountWidget(WidgetRef ref) {
    return SearchContainerWidget(
      title: "表示件数",
      child: Wrap(
        children: DisplayItemsCount.values.map(
          (value) {
            return CustomRadioButton(
              title: value.label,
              value: value,
              groupValue: ref.watch(searchPageViewModel
                  .select((value) => value.displayItemsCount)),
              onTap: () {
                ref.read(searchPageViewModel.notifier).displayItemsCount =
                    value;
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
