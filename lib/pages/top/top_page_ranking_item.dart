import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/utils/extensions/num_extension.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

// ignore: must_be_immutable
class TopPageRankingItem extends StatelessWidget {
  TopPageRankingItem({
    Key? key,
    required this.clothingProduct,
    required this.ranking,
  }) : super(key: key);

  ClothingProduct clothingProduct;
  int ranking;

  Color get _rankingColor {
    switch (ranking) {
      case 1:
        return ColorName.rankingFirst;
      case 2:
        return ColorName.rankingSecond;
      case 3:
        return ColorName.rankingThird;
      default:
        return ColorName.rankingOther;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 0.66,
              child: GRNetworkImage(
                imageUrl: clothingProduct.image,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              height: 20,
              width: 20,
              child: Container(
                color: _rankingColor,
                alignment: Alignment.center,
                child: Text(
                  ranking.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                color: ColorName.backgroundLightGray,
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  clothingProduct.price.toPrice,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  clothingProduct.brand,
                  style: const TextStyle(
                    fontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  clothingProduct.part,
                  style: const TextStyle(
                    fontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ),
              // const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
