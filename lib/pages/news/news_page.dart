import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/pages/top/clothing_product_list_item.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_category.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_ranking_brand_item.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_ranking_item.dart';
import 'package:gr_clothing_flutter/pages/news/news_page_view_model.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newsViewModelProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          GRNetworkImage(
            imageUrl: state.firstImage,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 102,
            child: Row(
              children: [
                Expanded(
                  child: GRNetworkImage(
                    imageUrl: state.secondImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: GRNetworkImage(
                    imageUrl: state.thirdImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 102,
            child: Row(
              children: [
                Expanded(
                  child: GRNetworkImage(
                    imageUrl: state.fourthImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: GRNetworkImage(
                    imageUrl: state.fifthImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          _carouselImageListWidget(context, "ニュース", state.newsImageList),
          _carouselImageListWidget(context, "特集", state.specialFutureImageList),
          _rankingListView(state.rankingItems),
          _productListWidget(context, ref),
        ],
      ),
    );
  }

  // ニュース・特集
  Widget _carouselImageListWidget(
      BuildContext context, String title, List<String> imageList) {
    final width = MediaQuery.of(context).size.width - 40;
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          CarouselSlider.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index, realIndex) {
              return GRNetworkImage(imageUrl: imageList[index]);
            },
            options: CarouselOptions(
              height: width / 2,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }

  // ランキング
  Widget _rankingListView(List<RankingData> rankingItems) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rankingItems.length,
      itemBuilder: (context, index) {
        return Container(
          color: index.isOdd ? Colors.white : ColorName.backgroundRankingGray,
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text(
                  rankingItems[index].title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.7,
                child: CarouselSlider.builder(
                  itemCount: rankingItems[index].ranking.length,
                  itemBuilder: (context, carouselIndex, realIndex) {
                    final items = rankingItems[index].ranking[carouselIndex];
                    List<Widget> listWidget = [];
                    for (var i = 0; i < 3; i++) {
                      if ((items.length < 2 && i == 1) ||
                          (items.length < 3 && i == 2)) {
                        listWidget.add(
                          const Expanded(child: SizedBox()),
                        );
                      } else if (rankingItems[index].rankingType ==
                          RankingType.brand) {
                        listWidget.add(
                          Expanded(
                            child: TopPageRankingBrandItem(
                              clothingProduct: items[i],
                              ranking: (carouselIndex * 3) + i + 1,
                            ),
                          ),
                        );
                      } else {
                        listWidget.add(
                          Expanded(
                            child: TopPageRankingItem(
                              clothingProduct: items[i],
                              ranking: (carouselIndex * 3) + i + 1,
                            ),
                          ),
                        );
                      }
                    }
                    return SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listWidget,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    aspectRatio: 1.43,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // 商品一覧
  Widget _productListWidget(BuildContext context, WidgetRef ref) {
    final tabWidth = MediaQuery.of(context).size.width * 0.287;
    final selectedTab = ref.watch(productListTabType);
    final state = ref.watch(newsViewModelProvider);
    const normalTab = ProductListTabType.normal;
    const reserveTab = ProductListTabType.reserve;
    const saleTab = ProductListTabType.sale;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ColorName.skyBlue, width: 2),
            ),
          ),
          height: 31,
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              const Spacer(flex: 2),
              _productListTab(ref, tabWidth, selectedTab, normalTab),
              const Spacer(flex: 1),
              _productListTab(ref, tabWidth, selectedTab, reserveTab),
              const Spacer(flex: 1),
              _productListTab(ref, tabWidth, selectedTab, saleTab),
              const Spacer(flex: 2),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: ColorName.backgroundLightGray),
              right: BorderSide(color: ColorName.backgroundLightGray),
            ),
          ),
          margin: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.48,
              crossAxisCount: 3,
            ),
            itemCount: _clothingProductList(selectedTab, state).length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    ref.read(showProductDetailProvider.notifier).state = true,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: ColorName.backgroundLightGray),
                      bottom: BorderSide(color: ColorName.backgroundLightGray),
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  child: ClothingProductListItem(
                    clothingProduct:
                        _clothingProductList(selectedTab, state)[index],
                    isReserve: selectedTab == ProductListTabType.reserve,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _productListTab(WidgetRef ref, double width,
      ProductListTabType selectedTab, ProductListTabType tabType) {
    return GestureDetector(
      onTap: () => ref.read(productListTabType.notifier).state = tabType,
      child: Container(
        width: width,
        color: selectedTab == tabType
            ? tabType.activeColor
            : tabType.inactiveColor,
        alignment: Alignment.center,
        child: Text(
          tabType.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // 商品一覧
  List<ClothingProduct> _clothingProductList(
      ProductListTabType tabType, NewsState state) {
    switch (tabType) {
      case ProductListTabType.normal:
        return state.normalClothingProductList;
      case ProductListTabType.reserve:
        return state.reserveClothingProductList;
      case ProductListTabType.sale:
        return state.saleClothingProductList;
    }
  }
}
