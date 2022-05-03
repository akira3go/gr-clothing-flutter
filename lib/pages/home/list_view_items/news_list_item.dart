import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/extensions/date_time_extension.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({
    Key? key,
    required this.data,
    required this.tapBookMark,
  }) : super(key: key);

  final News data;
  final Function(bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GRNetworkImage(
            imageUrl: data.image,
            height: 96,
            width: 144,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Text(
                        data.location?.name ?? "",
                        style: TextStyle(
                          color: data.location?.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            data.dateTime.dateHour,
                            maxLines: 1,
                            style: const TextStyle(
                              color: ColorName.lightGray,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      ZeroPaddingIconButton(
                        onPressed: () => tapBookMark(data.isFavorite),
                        icon: Icon(
                          data.isFavorite
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          color: ColorName.peoples,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    data.body,
                    maxLines: 4,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      height: 1.1,
                      fontSize: 13
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
