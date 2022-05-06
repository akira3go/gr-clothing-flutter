import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/clothing_product.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

// ignore: must_be_immutable
class TopPageRankingBrandItem extends StatelessWidget {
  TopPageRankingBrandItem({
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
          padding: const EdgeInsets.only(top: 5, bottom: 20),
          decoration: const BoxDecoration(
            border: Border(right: BorderSide(color: ColorName.backgroundLightGray, width: 1,),),
          ),
          alignment: Alignment.topCenter,
          child: Text(
            clothingProduct.brand,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 1.2,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
