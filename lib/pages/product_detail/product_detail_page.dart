import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_data_table.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_order_list.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_relative_items.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_view_model.dart';
import 'package:gr_clothing_flutter/pages/top/clothing_product_list_item.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/extensions/num_extension.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailViewModelProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("商品詳細"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.78,
              child: GRNetworkImage(imageUrl: state.brandImage),
            ),
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 0.66,
              child: CarouselSlider.builder(
                itemCount: state.productImages.length,
                itemBuilder: (context, index, realIndex) {
                  return GRNetworkImage(imageUrl: state.productImages[index]);
                },
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  aspectRatio: 0.66,
                ),
              ),
            ),
            _allImagesWidget(state.productImages),
            _productName(state),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(state.productExplain),
            ),
            _priceData(state),
            ProductDetailOrderList(stockList: state.stockList),
            const ProductDetailDataTable(),
            if (state.sizeImage != null) _checkSize(state.sizeImage!),
            ProductDetailRelativeItems(state: state),
          ],
        ),
      ),
    );
  }

  // サイズの測定方法
  Widget _checkSize(String image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "サイズの測定方法",
          style: TextStyle(fontSize: 10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: GRNetworkImage(imageUrl: image),
        ),
      ],
    );
  }

  // 商品情報
  Widget _productName(ProductDetailState state) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            state.productName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          padding: const EdgeInsets.only(top: 5),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: ColorName.lightGray)),
          ),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "商品コード：",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: state.productCode)
                  ],
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: ColorName.productDetailTag,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "ブランド一覧",
                            style: TextStyle(color: Colors.white),
                          ),
                          const TextSpan(
                            text: " > ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: state.brand,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration: const BoxDecoration(
                      color: ColorName.productDetailTag,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      state.part,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // 全ての画像
  Widget _allImagesWidget(List<String> productImages) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 0.66,
            child: GRNetworkImage(imageUrl: productImages[index]),
          );
        },
      ),
    );
  }

  // 値段・還元ポイント・お気に入り
  Widget _priceData(ProductDetailState state) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              if (state.salesPrice != null)
                Text(
                  " ${state.salesPrice!.toPrice} ",
                  style: const TextStyle(
                    color: ColorName.deepRed,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 3,
                    fontFamily: FontFamily.roboto,
                  ),
                ),
              Text(
                " → ${state.price.toPrice}",
                style: const TextStyle(
                  color: ColorName.deepRed,
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  fontFamily: FontFamily.roboto,
                ),
              ),
              const Text("（税込）", style: TextStyle(fontSize: 12)),
              if (state.isFreeShipping)
                Container(
                  color: ColorName.deepRed,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text(
                    "送料無料",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  state.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: ColorName.deepRed,
                ),
              ),
            ],
          ),
          Text("（${state.point}ポイント還元）"),
        ],
      ),
    );
  }
}
