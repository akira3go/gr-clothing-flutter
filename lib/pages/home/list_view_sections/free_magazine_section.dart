import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/free_magazine.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';

class FreeMagazineSection extends StatelessWidget {
  const FreeMagazineSection({
    Key? key,
    required this.freeMagazine,
    required this.onTapItem,
  }) : super(key: key);

  final FreeMagazine freeMagazine;
  final Function(String link) onTapItem;

  @override
  Widget build(BuildContext context) {
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
                GestureDetector(
                  onTap: () => onTapItem(freeMagazine.firstLink),
                  child: GRNetworkImage(
                    imageUrl: freeMagazine.firstImage,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () => onTapItem(freeMagazine.firstLink),
                  child: GRNetworkImage(
                    imageUrl: freeMagazine.secondImage,
                    width: 100,
                  ),
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
                                freeMagazine.firstArtistName,
                                maxLines: 1,
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                freeMagazine.secondArtistName,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "Skream! ${freeMagazine.year}年${freeMagazine.month}月号",
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
