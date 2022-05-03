import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/favorite/favorite_page.dart';

/// お気に入りアーティストとブックマーク　２つのボタン
class FavoriteHeadButtonPage extends ConsumerWidget {
  const FavoriteHeadButtonPage({Key? key}) : super(key: key);
  static const buttonLeftText = 'お気に入りアーティスト';
  static const buttonRightText = 'ブックマーク';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonClickIndex = ref.watch(buttonClickIndexTypeProvider);
    final buttonClickIndexState = ref.watch(buttonClickIndexTypeProvider.state);

    return Container(
      child: Column(children: [
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            const Expanded(
              child: SizedBox(),
              flex: 1,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  buttonClickIndexState.state = 0;
                },
                child: Center(
                  child: Text(
                    buttonLeftText,
                    style: TextStyle(
                      color: (buttonClickIndex == 0
                          ? Colors.white
                          : ColorName.japanese),
                    ),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      buttonClickIndex == 0 ? ColorName.japanese : Colors.white,
                  padding: EdgeInsets.zero,
                  side: const BorderSide(color: ColorName.japanese, width: 1),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
              ),
              width: 160,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  buttonClickIndexState.state = 1;
                },
                child: Center(
                  child: Text(
                    buttonRightText,
                    style: TextStyle(
                      color: (buttonClickIndex == 0
                          ? ColorName.overseas
                          : Colors.white),
                    ),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: (buttonClickIndex == 0
                      ? Colors.white
                      : ColorName.overseas),
                  side: const BorderSide(color: ColorName.overseas, width: 1),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
              ),
              width: 160,
            ),
            const Expanded(
              child: SizedBox(),
              flex: 1,
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
      ]),
      color: Colors.white,
    );
  }
}
