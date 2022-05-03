import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review_item.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class DiscReviewListItem extends StatelessWidget {
  const DiscReviewListItem({
    Key? key,
    required this.discReviewItem,
    required this.tapBookMark,
  }) : super(key: key);

  final DiscReviewItem discReviewItem;
  final Function(DiscReviewItem discReviewItem, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ColoredBox(
                color: Colors.black,
                child: GRNetworkImage(
                  imageUrl: discReviewItem.image,
                  height: 160,
                  width: 160,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: ZeroPaddingIconButton(
                  onPressed: () => tapBookMark(
                    discReviewItem,
                    discReviewItem.isFavorite,
                  ),
                  icon: Icon(
                    discReviewItem.isFavorite
                        ? Icons.bookmark
                        : Icons.bookmark_border,
                    color: ColorName.peoples,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 8, left: 0, right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  discReviewItem.artistName,
                  maxLines: 2,
                  style: const TextStyle(
                    color: ColorName.gray,
                    fontSize: 13,
                  ),
                ),
                Text(
                  discReviewItem.name,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ColorName.lightGray,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
