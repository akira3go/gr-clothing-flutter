import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/search/search_page_state.dart';

final searchPageViewModel =
    StateNotifierProvider.autoDispose<SearchPageViewModel, SearchPageState>(
        (ref) {
  final state = SearchPageState(
    productCategory: ProductCategory.all,
    reserveProduct: ReserveProduct.all,
    displaySort: DisplaySort.releaseDateNewer,
    priceRange: PriceRange.all,
    saleProduct: SaleProduct.all,
    productSize: ProductSize.all,
    displayItemsCount: DisplayItemsCount.normal,
    productColor: ProductColor.all,
  );
  return SearchPageViewModel(state);
});

class SearchPageViewModel extends StateNotifier<SearchPageState> {
  SearchPageViewModel(SearchPageState state) : super(state);

  void reset() {
    final defaultState = SearchPageState(
      productCategory: ProductCategory.all,
      reserveProduct: ReserveProduct.all,
      displaySort: DisplaySort.releaseDateNewer,
      priceRange: PriceRange.all,
      saleProduct: SaleProduct.all,
      productSize: ProductSize.all,
      displayItemsCount: DisplayItemsCount.normal,
      productColor: ProductColor.all,
    );
    state = defaultState;
  }

  set keyword(String keyword) {
    state = state.copyWith(keyword: keyword);
  }

  set productCategory(ProductCategory productCategory) {
    state = state.copyWith(productCategory: productCategory);
  }

  set productSize(ProductSize productSize) {
    state = state.copyWith(productSize: productSize);
  }

  set reserveProduct(ReserveProduct reserveProduct) {
    state = state.copyWith(reserveProduct: reserveProduct);
  }

  set displaySort(DisplaySort displaySort) {
    state = state.copyWith(displaySort: displaySort);
  }

  set priceRange(PriceRange priceRange) {
    state = state.copyWith(priceRange: priceRange);
  }

  set saleProduct(SaleProduct saleProduct) {
    state = state.copyWith(saleProduct: saleProduct);
  }

  set displayItemsCount(DisplayItemsCount displayItemsCount) {
    state = state.copyWith(displayItemsCount: displayItemsCount);
  }

  set productColor(ProductColor productColor) {
    state = state.copyWith(productColor: productColor);
  }

  set includeSoldOut(bool includeSoldOut) {
    state = state.copyWith(includeSoldOut: includeSoldOut);
  }

  set includeVideoPosting(bool includeVideoPosting) {
    state = state.copyWith(includeVideoPosting: includeVideoPosting);
  }
}
