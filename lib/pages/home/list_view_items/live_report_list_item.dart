import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/live_report.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/utils/extensions/date_time_extension.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/wrapper/zero_padding_icon_button.dart';

class LiveReportListItem extends StatelessWidget {
  const LiveReportListItem({
    Key? key,
    required this.liveReport,
    required this.tapBookMark,
  }) : super(key: key);

  final LiveReport liveReport;
  final Function(LiveReport liveReport, bool isFavorite) tapBookMark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: ColoredBox(
                  color: Colors.black,
                  child: GRNetworkImage(
                    imageUrl: liveReport.image,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: ZeroPaddingIconButton(
                  onPressed: () =>
                      tapBookMark(liveReport, liveReport.isFavorite),
                  icon: Icon(
                    liveReport.isFavorite
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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            liveReport.title,
            maxLines: 2,
            style: const TextStyle(overflow: TextOverflow.ellipsis),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FittedBox(
            child: Text(
              "${liveReport.date.date} ${liveReport.placeName}",
              maxLines: 2,
              style: const TextStyle(fontSize: 13, color: ColorName.lightGray),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
