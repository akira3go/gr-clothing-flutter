import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/ranking_item.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class RankingListItem extends StatelessWidget {
  const RankingListItem({
    Key? key,
    required this.ranking,
    required this.item,
    required this.location,
    required this.tapBookMark,
  }) : super(key: key);

  final int ranking;
  final RankingItem item;
  final Location location;
  final Function(RankingItem item, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ranking.isEven ? ColorName.backgroundLightGray : Colors.white,
      padding: const EdgeInsets.all(8),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              const Spacer(),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: location.color,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  ranking.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              item.body,
              textAlign: TextAlign.left,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                height: 1.1,
              ),
              maxLines: 4,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ZeroPaddingIconButton(
            onPressed: () => tapBookMark(item, item.isFavorite),
            icon: Icon(
              item.isFavorite ? Icons.bookmark : Icons.bookmark_border,
              color: ColorName.peoples,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
