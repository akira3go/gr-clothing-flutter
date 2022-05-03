import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/special_feature.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class SpecialFeaturesListItem extends StatelessWidget {
  const SpecialFeaturesListItem({
    Key? key,
    required this.specialFeature,
    required this.tapBookMark,
  }) : super(key: key);

  final SpecialFeature specialFeature;
  final Function(SpecialFeature specialFeature, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Stack(children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: GRNetworkImage(imageUrl: specialFeature.image),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: ZeroPaddingIconButton(
                onPressed: () =>
                    tapBookMark(specialFeature, specialFeature.isFavorite),
                icon: Icon(
                  specialFeature.isFavorite
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                  color: ColorName.peoples,
                  size: 20,
                ),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            specialFeature.title,
            maxLines: 2,
            style: const TextStyle(overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }
}
