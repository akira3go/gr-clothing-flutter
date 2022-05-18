import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';
import 'package:gr_clothing_flutter/utils/extensions/num_extension.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/widget/gradation_border.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page_view_model.dart';

class FavoritePageBody extends ConsumerWidget {
  const FavoritePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(favoritePageViewModelProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "お気に入り一覧",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${state.favoriteList.length.toString()}件",
                    style: const TextStyle(
                      color: Colors.red,
                      fontFamily: FontFamily.hiragino,
                    ),
                  ),
                  const TextSpan(
                    text: "のお気に入りがあります。",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: FontFamily.hiragino,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                _favoriteList(state),
                GradationBorder(height: 10),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GradationBorder(height: 10, reverse: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // お気に入り一覧
  Widget _favoriteList(FavoritePageState state) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, bottom: 100),
      itemCount: state.favoriteList.length,
      itemBuilder: (context, index) {
        final item = state.favoriteList[index];
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: const BorderSide(color: ColorName.lightGray),
              top: BorderSide(
                color: index == 0 ? ColorName.lightGray : Colors.transparent,
              ),
            ),
          ),
          child: AspectRatio(
            aspectRatio: 2.6,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 11,
                    bottom: 11,
                  ),
                  child: AspectRatio(
                    aspectRatio: 0.7,
                    child: GRNetworkImage(
                      imageUrl: item.image,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "${item.brand} ${item.itemName}",
                            maxLines: 1,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ),
                        Text(
                          item.part,
                          style: const TextStyle(color: Colors.blue),
                        ),
                        Text(
                          item.price.toJapanesePrice,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.delete_rounded,
                      color: ColorName.lightGray,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}