import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';

class MyPage extends ConsumerWidget {
  MyPage({Key? key}) : super(key: key);

  final topTabProvider = StateProvider.autoDispose<MyPageTopTab>((ref) {
    return MyPageTopTab.purchaseHistory;
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MYページ"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topTab(ref),
            _hasPoint(),
            const Text("購入履歴一覧", style: TextStyle(fontSize: 18)),
            const Text("購入履歴はありません。"),
          ],
        ),
      ),
    );
  }

  // 上部タブ
  Widget _topTab(WidgetRef ref) {
    final myPageTopTab = ref.watch(topTabProvider);
    final isPurchaseHistory = myPageTopTab == MyPageTopTab.purchaseHistory;
    final isFavorite = myPageTopTab == MyPageTopTab.favorite;
    final isSetting = myPageTopTab == MyPageTopTab.setting;
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => ref.read(topTabProvider.notifier).state =
                  MyPageTopTab.purchaseHistory,
              child: Container(
                decoration: BoxDecoration(
                  color:
                      isPurchaseHistory ? ColorName.skyDeepBlue : Colors.white,
                  border: Border.all(color: ColorName.lightGray),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "購入履歴",
                  style: TextStyle(
                    color: isPurchaseHistory ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 1),
          Expanded(
            child: GestureDetector(
              onTap: () => ref.read(topTabProvider.notifier).state =
                  MyPageTopTab.favorite,
              child: Container(
                decoration: BoxDecoration(
                  color: isFavorite ? ColorName.skyDeepBlue : Colors.white,
                  border: Border.all(color: ColorName.lightGray),
                ),
                alignment: Alignment.center,
                child: Text(
                  "お気に入り",
                  style: TextStyle(
                    color: isFavorite ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 1),
          Expanded(
            child: GestureDetector(
              onTap: () => ref.read(topTabProvider.notifier).state =
                  MyPageTopTab.setting,
              child: Container(
                decoration: BoxDecoration(
                  color: isSetting ? ColorName.skyDeepBlue : Colors.white,
                  border: Border.all(color: ColorName.lightGray),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "設定",
                  style: TextStyle(
                    color: isSetting ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 所持ポイント
  Widget _hasPoint() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorName.lightYellow,
        border: Border.all(color: ColorName.deepYellow),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: RichText(
          maxLines: 1,
          text: const TextSpan(
            children: [
              TextSpan(
                text: " mori test様 ",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.w600,
                  fontFamily: FontFamily.hiragino,
                ),
              ),
              TextSpan(
                text: "現在の所持ポイントは",
                style: TextStyle(
                  color: Colors.brown,
                  fontFamily: FontFamily.hiragino,
                ),
              ),
              TextSpan(
                text: " 500pt ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextSpan(
                text: "です。",
                style: TextStyle(color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum MyPageTopTab {
  purchaseHistory,
  favorite,
  setting,
}
