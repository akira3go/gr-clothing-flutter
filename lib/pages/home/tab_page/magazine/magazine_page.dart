import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/magazine/magazine_page_view_model.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';

class MagazinePage extends ConsumerWidget {
  const MagazinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final magazine = ref.watch(freeMagazineProvider);
    return Column(
      children: [
        const HomePageSectionHeader(
          title: 'フリーマガジン',
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                GRNetworkImage(
                  imageUrl: magazine.firstImage,
                  width: 100,
                ),
                const SizedBox(
                  width: 4,
                ),
                GRNetworkImage(
                  imageUrl: magazine.secondImage,
                  width: 100,
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FittedBox(
                        child: Text(
                          "カバー・アーティスト",
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                magazine.firstArtistName,
                                maxLines: 1,
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                magazine.secondArtistName,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "Skream! ${magazine.year}年${magazine.month}月号",
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
