import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomBarTypeProvider = StateProvider.autoDispose<BottomBarType>((ref) => BottomBarType.home);

enum BottomBarType {
  home,
  news,
  search,
  gift,
  myPage
}
