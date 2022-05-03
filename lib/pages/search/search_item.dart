import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/utils/extensions/date_time_extension.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';

class SearchItemWidget extends ConsumerWidget {
  final bool isEvenLine;
  final News data;

  const SearchItemWidget(this.isEvenLine, {required this.data, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: isEvenLine ? Colors.white : ColorName.backgroundLightGray,
      ),
      height: 100,
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GRNetworkImage(
            imageUrl: data.image,
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
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: FittedBox(
                          child: Text(
                            data.dateTime.dateHour,
                            maxLines: 1,
                            style: const TextStyle(
                              color: ColorName.lightGray,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
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
                        overflow: TextOverflow.ellipsis, height: 1.1),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
