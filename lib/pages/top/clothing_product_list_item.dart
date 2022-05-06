import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/utils/extensions/num_extension.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';

// ignore: must_be_immutable
class ClothingProductListItem extends StatelessWidget {
  ClothingProductListItem({
    Key? key,
    required this.clothingProduct,
    this.isReserve = false,
  }) : super(key: key);

  ClothingProduct clothingProduct;
  bool isReserve;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 0.67,
              child: GRNetworkImage(
                imageUrl: clothingProduct.image,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              height: 23,
              child: _topTag,
            ),
          ],
        ),
        Text(
          clothingProduct.price.toPrice,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          clothingProduct.brand,
          style: const TextStyle(
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
        Text(
          clothingProduct.part,
          style: const TextStyle(
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
        const Spacer(),
      ],
    );
  }

  // 残り点数や予約受付などのタグ
  Widget get _topTag {
    if (isReserve) {
      return Container(
        color: Colors.white.withOpacity(0.6),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: const Text(
          "予約受付",
          style: TextStyle(fontSize: 12),
        ),
      );
    } else if (clothingProduct.leftSize != null &&
        clothingProduct.leftCount != null) {
      return Container(
        color: Colors.yellow.withOpacity(0.6),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          "${clothingProduct.leftSize!.label} 残り${clothingProduct.leftCount!}点",
          style: const TextStyle(fontSize: 12),
        ),
      );
    } else if (clothingProduct.leftShoeSize != null &&
        clothingProduct.leftCount != null) {
      return Container(
        color: Colors.yellow.withOpacity(0.7),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          "${clothingProduct.leftShoeSize!}cm 残り${clothingProduct.leftCount!}点",
          style: const TextStyle(fontSize: 12),
        ),
      );
    } else {
      return const ColoredBox(color: Colors.transparent);
    }
  }
}
