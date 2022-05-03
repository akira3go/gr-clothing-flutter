import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_app_bar.dart';
import 'package:gr_clothing_flutter/pages/home/home_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/access_ranking_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/artist_column_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/disc_review_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/free_magazine_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/information_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/interview_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/live_report_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/music_video_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/news_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/special_features_section.dart';
import 'package:gr_clothing_flutter/pages/home/list_view_sections/video_message_section.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/artist_column/artist_column_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/disc_review/disc_review_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/feature/feature_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/interview/interview_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/live_report/live_report_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/magazine/magazine_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/music_video/music_video_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/special/special_page.dart';
import 'package:gr_clothing_flutter/pages/home/tab_page/video_message/video_message_page.dart';
import 'package:gr_clothing_flutter/model/top_news/top_news.dart';
import 'package:gr_clothing_flutter/utils/wrapper/gr_network_image.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageViewModelProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: HomePageAppBar(
        onTapSearch: () {},
        onChanged: (String value) {},
        onTapFavorite: () =>
            ref.read(showFavoritePageProvider.notifier).state = true,
        onTapPeople: () {},
        onTapNotification: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 上タブ　ニュース　ライブ　リリースなど
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: HomePageTopTabType.values.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => ref
                      .read(homePageViewModelProvider.notifier)
                      .topTabType = HomePageTopTabType.values[index],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Center(
                      child: Text(
                        HomePageTopTabType.values[index].title,
                        style: TextStyle(
                          color: HomePageTopTabType.values[index] ==
                                  state.selectedTopTabType
                              ? ColorName.deepPink
                              : ColorName.gray,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: _topTabPage(state.selectedTopTabType, state.news, ref),
          ),
        ],
      ),
    );
  }

  Widget _topTabPage(HomePageTopTabType tabType, TopNews news, WidgetRef ref) {
    Widget page;
    switch (tabType) {
      case HomePageTopTabType.news:
        return ListView.builder(
          itemCount: HomePageListSection.values.length,
          itemBuilder: (context, index) {
            switch (HomePageListSection.values[index]) {
              case HomePageListSection.topImages:
                // トップ画像
                return CarouselSlider.builder(
                  itemCount: news.topImages.length,
                  itemBuilder: (ctx, index, realIdx) {
                    return GestureDetector(
                      onTap: () => setLink(ref, news.topImages[index].link),
                      child:
                          GRNetworkImage(imageUrl: news.topImages[index].image),
                    );
                  },
                  options: CarouselOptions(height: 150),
                );
              case HomePageListSection.latestUpdateNews:
                // 最新更新記事
                return NewsSection(
                  title: "最新更新記事",
                  newsList: news.latestUpdateNews,
                  tapBookMark: (isFavorite, index) {},
                  onTapItem: (news) => setLink(ref, news.link),
                );
              case HomePageListSection.headlineNews:
                // ニュース
                return NewsSection(
                  title: "ニュース",
                  newsList: news.headlineNews,
                  tapBookMark: (isFavorite, index) {},
                  onTapItem: (news) => setLink(ref, news.link),
                );
              case HomePageListSection.accessRanking:
                return AccessRankingSection(
                  title: "アクセスランキング",
                  accessRanking: news.accessRanking,
                  tapBookMark: (location, item, isFavorite) {},
                  onTapItem: (rankingItem) => setLink(ref, rankingItem.link),
                );
              case HomePageListSection.artistColumnList:
                return ArtistColumnSection(
                  artistColumnList: news.artistColumnList,
                  tapBookMark: (item, isFavorite) {},
                  onTapItem: (artistColumn) => setLink(ref, artistColumn.link),
                );
              case HomePageListSection.interviewList:
                return InterviewSection(
                  interviews: news.interviewList,
                  tapBookMark: (interview, isFavorite) {},
                  onTapItem: (interview) => setLink(ref, interview.link),
                );
              case HomePageListSection.specialFeatures:
                return SpecialFeaturesSection(
                  specialFeatures: news.specialFeatures,
                  tapBookMark: (specialFeature, isFavorite) {},
                  onTapItem: (specialFeature) =>
                      setLink(ref, specialFeature.link),
                );
              case HomePageListSection.freeMagazine:
                return FreeMagazineSection(
                  freeMagazine: news.freeMagazine,
                  onTapItem: (link) => setLink(ref, link),
                );
              case HomePageListSection.musicVideoList:
                return MusicVideoSection(
                  musicVideoList: news.musicVideoList,
                  tapBookMark: (musicVideo, isFavorite) {},
                  onTapItem: (musicVideo) => setLink(ref, musicVideo.link),
                );
              case HomePageListSection.videoMessages:
                return VideoMessageSection(
                  videoMessageList: news.videoMessages,
                  tapBookMark: (videoMessage, isFavorite) {},
                  onTapItem: (videoMessage) => setLink(ref, videoMessage.link),
                );
              case HomePageListSection.liveReports:
                return LiveReportSection(
                  liveReport: news.liveReports,
                  tapBookMark: (liveReport, isFavorite) {},
                  onTapItem: (liveReport) => setLink(ref, liveReport.link),
                );
              case HomePageListSection.discReview:
                return DiscReviewSection(
                  discReview: news.discReview,
                  tapBookMark: (discReviewItem, isFavorite) {},
                  onTapItem: (discReviewItem) =>
                      setLink(ref, discReviewItem.link),
                );
              case HomePageListSection.information:
                return InformationSection(
                  liveInformation: news.liveInformation,
                  releaseInformation: news.releaseInformation,
                  onPress: (artistInformation) =>
                      setLink(ref, artistInformation.link),
                );
            }
          },
        );
      case HomePageTopTabType.live:
        return const Center(
          child: Text("未作成：ライヴページ"),
        );
      case HomePageTopTabType.release:
        return const Center(
          child: Text("未作成：リリースページ"),
        );
      case HomePageTopTabType.interview:
        page = const InterviewPage();
        break;
      case HomePageTopTabType.specialFeatures:
        page = const SpecialFeaturePage();
        break;
      case HomePageTopTabType.liveReport:
        page = const LiveReportPage();
        break;
      case HomePageTopTabType.musicVideo:
        page = const MusicVideoPage();
        break;
      case HomePageTopTabType.videoMessage:
        page = const VideoMessagePage();
        break;
      case HomePageTopTabType.tiktok:
        return const Center(
          child: Text("未作成：TikTokページ"),
        );
      case HomePageTopTabType.review:
        page = const DiscReviewPage();
        break;
      case HomePageTopTabType.column:
        page = const ArtistColumnPage();
        break;
      case HomePageTopTabType.magazine:
        page = const MagazinePage();
        break;
      case HomePageTopTabType.special:
        page = const SpecialPage();
        break;
      case HomePageTopTabType.present:
        return const Center(
          child: Text("プレゼントページ"),
        );
    }
    return SingleChildScrollView(
      child: page,
    );
  }

  void setLink(WidgetRef ref, String linkUrl) {
    ref.read(detailPageLinkUrlProvider.notifier).state = linkUrl;
  }
}
