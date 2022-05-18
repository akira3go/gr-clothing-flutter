import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/model/url_launcher/open_browser.dart';
import 'package:gr_clothing_flutter/pages/artist_list/artist_list_page.dart';
import 'package:gr_clothing_flutter/pages/category_list/category_list_page.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/pages/top/clothing_product_list_item.dart';
import 'package:gr_clothing_flutter/pages/top/drawer/top_drawer.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_category.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_ranking_brand_item.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_ranking_item.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_view_model.dart';
import 'package:gr_clothing_flutter/utils/widget/gradation_border.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/model/shared_preferences/preferences_provider.dart';
import 'package:gr_clothing_flutter/pages/category_list/artist_search_dropdown.dart';

final topPageScaffoldKey = GlobalKey<ScaffoldState>();

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: topPageScaffoldKey,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
        leading: Container(
          margin: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () => topPageScaffoldKey.currentState!.openDrawer(),
            icon: const Icon(Icons.menu, size: 30),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () =>
                  ref.read(showCartPageProvider.notifier).state = true,
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: TopDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _headerTabWidget(ref),
          _searchFieldWidget(ref),
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _typeFieldWidget(TopPageCategory.news, ref),
                  _typeFieldWidget(TopPageCategory.brand, ref),
                  _typeFieldWidget(TopPageCategory.artist, ref),
                  _typeFieldWidget(TopPageCategory.category, ref),
                  _typeFieldWidget(TopPageCategory.sale, ref),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                _mainWidget(context, ref),
                GradationBorder(height: 10),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GradationBorder(height: 10, reverse: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainWidget(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newsViewModelProvider);
    final selectedTab = ref.watch(topPageCategoryProvider);
    switch (selectedTab) {
      case TopPageCategory.category:
        return const CategoryListPage();
      case TopPageCategory.artist:
        return const ArtistListPage();
      default:
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              GRNetworkImage(
                imageUrl:
                    "https://shop.gekirock.com/content/banner/assets_c/2022/04/20220427_ankimo-thumb-1200xauto-1045.jpg",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 102,
                child: Row(
                  children: [
                    Expanded(
                      child: GRNetworkImage(
                        imageUrl:
                            "https://shop.gekirock.com/content/banner/assets_c/2022/04/subciety_banner_20220430-thumb-1200xauto-1049.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: GRNetworkImage(
                        imageUrl:
                            "https://shop.gekirock.com/content/banner/assets_c/2022/04/gs_20220430-thumb-1200xauto-1050.jpg",
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
                        imageUrl:
                            "https://shop.gekirock.com/content/banner/assets_c/2022/04/20220428_serenity-thumb-1200xauto-1047.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: GRNetworkImage(
                        imageUrl:
                            "https://shop.gekirock.com/content/banner/assets_c/2022/04/20220428_GALFY-thumb-1200xauto-1046.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              _latestNewsWidget(),
              _specialFeatureWidget(),
              _rankingListView(state.rankingItems),
              _productListWidget(context, ref),
            ],
          ),
        );
    }
  }

  // header部分のタブ
  Widget _headerTabWidget(WidgetRef ref) {
    final isLoggedIn =
        ref.watch(preferencesProvider.select((value) => value.isLoggedIn));
    return Container(
      height: 26,
      color: ColorName.skyDeepBlue,
      padding: const EdgeInsets.all(3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(showMyPageProvider.notifier).state = true;
                } else {
                  ref.read(showLoginPageProvider.notifier).state = true;
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn ? Icons.person : Icons.login_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    isLoggedIn ? "Myページ" : "ログイン",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(showFavoritePageProvider.notifier).state = true;
                } else {
                  openBrowser(LinkUrl.signUpAccount);
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn ? Icons.star_rounded : Icons.create_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      isLoggedIn ? "お気に入り" : "新規会員登録",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                if (isLoggedIn) {
                  ref.read(preferencesProvider.notifier).isLoggedIn = false;
                }
              },
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLoggedIn
                        ? Icons.logout_rounded
                        : Icons.remove_red_eye_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    isLoggedIn ? "ログアウト" : "新着一覧",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 検索フィールド
  Widget _searchFieldWidget(WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 20, 5, 10),
      height: 35,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorName.lightGray),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: ColorName.lightGray,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: ColorName.backgroundLightGray,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                          color: ColorName.lightGray,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          if (ref.watch(topPageCategoryProvider) == TopPageCategory.artist)
            _artistLocationSelectWidget(ref),
        ],
      ),
    );
  }

  /// 国内・海外の選択
  Widget _artistLocationSelectWidget(WidgetRef ref) {
    final items = ArtistSearchDropdown.values.map((value) {
      return DropdownMenuItem(
        child: Text(value.title, style: const TextStyle(fontSize: 11)),
        value: value,
      );
    }).toList();
    return Container(
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.lightGray),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DropdownButton(
        underline: Container(),
        value: ref.watch(artistSearchDropdownProvider),
        isExpanded: true,
        items: items,
        onChanged: (value) => ref
            .read(artistSearchDropdownProvider.notifier)
            .state = value as ArtistSearchDropdown,
      ),
    );
  }

  Widget _typeFieldWidget(TopPageCategory category, WidgetRef ref) {
    final selectedCategory = ref.watch(topPageCategoryProvider);
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () =>
                ref.read(topPageCategoryProvider.notifier).state = category,
            child: Container(
              padding: category == TopPageCategory.sale
                  ? const EdgeInsets.all(12)
                  : const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
              decoration: BoxDecoration(
                color: selectedCategory == category
                    ? selectedCategory.color
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: selectedCategory == category
                      ? Colors.transparent
                      : ColorName.lightGray,
                ),
              ),
              alignment: Alignment.center,
              child: category.icon.image(
                color: selectedCategory == category
                    ? Colors.white
                    : category.color,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
            child: Text(
              category.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 最新ニュース
  Widget _latestNewsWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "ニュース",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GRNetworkImage(
                  imageUrl:
                      "https://gekirock.com/news/assets_c/2022/05/sabbat13_banner_20220430-thumb-420xauto-88961.jpg",
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }

  // 特集
  Widget _specialFeatureWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "特集",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GRNetworkImage(
                  imageUrl:
                      "https://gekirock.com/news/assets_c/2022/05/sabbat13_banner_20220430-thumb-420xauto-88961.jpg",
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
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
