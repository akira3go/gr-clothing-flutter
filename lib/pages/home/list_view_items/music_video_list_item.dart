import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/music_video.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class MusicVideoListItem extends StatelessWidget {
  const MusicVideoListItem({
    Key? key,
    required this.data,
    required this.tapBookMark,
  }) : super(key: key);

  final MusicVideo data;
  final Function(MusicVideo data, bool isFavorite) tapBookMark;

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  data.title,
                  maxLines: 2,
                  style: const TextStyle(
                    color: ColorName.gray,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "${data.playbackTime}  ${data.playCount} Plays",
                  style: const TextStyle(
                    fontSize: 12,
                    color: ColorName.lightGray,
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
