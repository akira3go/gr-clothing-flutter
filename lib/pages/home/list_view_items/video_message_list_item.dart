import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/video_message.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class VideoMessageListItem extends StatelessWidget {
  const VideoMessageListItem({
    Key? key,
    required this.data,
    required this.tapBookMark,
  }) : super(key: key);

  final VideoMessage data;
  final Function(VideoMessage data, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ColoredBox(
                color: Colors.black,
                child: GRNetworkImage(
                  imageUrl: data.image,
                  height: 100,
                  width: 150,
                ),
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
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 8, left: 0, right: 4),
            child: Text(
              data.artistName,
              maxLines: 1,
              style: const TextStyle(
                color: ColorName.gray,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
