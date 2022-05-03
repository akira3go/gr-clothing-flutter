import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/top_news/daily_information.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/utils/extensions/date_time_extension.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_information.dart';

class DailyInformationListItem extends StatelessWidget {
  const DailyInformationListItem({
    Key? key,
    required this.dailyInformation,
    required this.onPress,
  }) : super(key: key);

  final DailyInformation dailyInformation;
  final Function(ArtistInformation artistInformation) onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.lightGray, width: 1),
        ),
      ),
      margin: const EdgeInsets.only(top: 8, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dailyInformation.date.date),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: TextButton(
                      onPressed: () =>
                          onPress(dailyInformation.information[index]),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        minimumSize: MaterialStateProperty.all(Size.zero),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        dailyInformation.information[index].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          fontFamily: FontFamily.hiragino,
                          color: dailyInformation
                              .information[index].location?.color,
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: dailyInformation.information.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
