import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_column.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class ArtistColumnListItem extends StatelessWidget {
  const ArtistColumnListItem({
    Key? key,
    required this.data,
    required this.tapBookMark,
  }) : super(key: key);

  final ArtistColumn data;
  final Function(ArtistColumn data, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              GRNetworkImage(
                imageUrl: data.image,
                height: 100,
                width: 150,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: ZeroPaddingIconButton(
                  onPressed: () => tapBookMark(data, data.isFavorite),
                  icon: Icon(
                    data.isFavorite ? Icons.bookmark : Icons.bookmark_border,
                    color: ColorName.peoples,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 6, left: 4, right: 4),
            child: Text(
              data.body,
              maxLines: 1,
              style: const TextStyle(color: ColorName.gray, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
