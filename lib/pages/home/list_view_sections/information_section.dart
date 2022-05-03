import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/daily_information.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/home_page_section_header.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_items/daily_information_list_item.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_information.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({
    Key? key,
    required this.liveInformation,
    required this.releaseInformation,
    required this.onPress,
  }) : super(key: key);

  final List<DailyInformation> liveInformation;
  final List<DailyInformation> releaseInformation;
  final Function(ArtistInformation artistInformation) onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HomePageSectionHeader(title: "ライヴ情報"),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return DailyInformationListItem(
                      dailyInformation: liveInformation[index],
                      onPress: onPress,
                    );
                  },
                  itemCount: liveInformation.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HomePageSectionHeader(title: "リリース情報"),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return DailyInformationListItem(
                      dailyInformation: releaseInformation[index],
                      onPress: onPress,
                    );
                  },
                  itemCount: releaseInformation.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
