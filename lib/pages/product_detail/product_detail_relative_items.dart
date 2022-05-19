import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_view_model.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/pages/top/clothing_product_list_item.dart';

class ProductDetailRelativeItems extends StatelessWidget {
  const ProductDetailRelativeItems({Key? key, required this.state}) : super(key: key);

  final ProductDetailState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Text("RELATED ITEM"),
        ),
        _relativeItem(
          "${state.part} ×　${state.brand} 商品一覧",
          state.partBrandProductList,
        ),
        _relativeItem("${state.brand} 商品一覧", state.partProductList),
        _relativeItem("${state.part} 商品一覧", state.brandProductList),
      ],
    );
  }

  Widget _relativeItem(String title, List<List<ClothingProduct>> listItem) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(title),
        ),
        CarouselSlider.builder(
          itemCount: listItem.length,
          itemBuilder: (context, carouselIndex, realIndex) {
            final items = listItem[carouselIndex];
            List<Widget> listWidget = [];
            for (var i = 0; i < 3; i++) {
              if ((items.length < 2 && i == 1) ||
                  (items.length < 3 && i == 2)) {
                listWidget.add(const Expanded(child: SizedBox()));
              } else {
                listWidget.add(
                  Expanded(
                    child: ClothingProductListItem(clothingProduct: items[i]),
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
            aspectRatio: 1.3,
          ),
        ),
      ],
    );
  }
}