import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/interview.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class InterviewListItem extends StatelessWidget {
  const InterviewListItem({
    Key? key,
    required this.interview,
    required this.tapBookMark,
  }) : super(key: key);

  final Interview interview;
  final Function(Interview interview, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: GRNetworkImage(
                  imageUrl: interview.image,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: ZeroPaddingIconButton(
                    onPressed: () => tapBookMark(interview, interview.isFavorite),
                    icon: Icon(
                      interview.isFavorite
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: ColorName.peoples,
                      size: 20,
                    ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            interview.title,
            maxLines: 2,
            style: const TextStyle(overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }
}
