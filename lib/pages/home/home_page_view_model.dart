import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/model/top_news/access_ranking.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_column.dart';
import 'package:gr_clothing_flutter/model/top_news/artist_information.dart';
import 'package:gr_clothing_flutter/model/top_news/category.dart';
import 'package:gr_clothing_flutter/model/top_news/daily_information.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review.dart';
import 'package:gr_clothing_flutter/model/top_news/disc_review_item.dart';
import 'package:gr_clothing_flutter/model/top_news/free_magazine.dart';
import 'package:gr_clothing_flutter/model/top_news/interview.dart';
import 'package:gr_clothing_flutter/model/top_news/live_report.dart';
import 'package:gr_clothing_flutter/model/top_news/music_video.dart';
import 'package:gr_clothing_flutter/model/top_news/news.dart';
import 'package:gr_clothing_flutter/model/top_news/special_feature.dart';
import 'package:gr_clothing_flutter/model/top_news/top_image.dart';
import 'package:gr_clothing_flutter/model/top_news/top_news.dart';
import 'package:gr_clothing_flutter/model/top_news/video_message.dart';

final homePageViewModelProvider =
    StateNotifierProvider.autoDispose<HomePageViewModel, HomePageState>(
  (ref) => HomePageViewModel(HomePageState()),
);

class HomePageViewModel extends StateNotifier<HomePageState> {
  HomePageViewModel(HomePageState state) : super(state);

  set topTabType(HomePageTopTabType type) {
    final newState = HomePageState();
    newState.selectedTopTabType = type;
    newState.news = state.news;
    state = newState;
  }
}

enum HomePageListSection {
  topImages,
  latestUpdateNews,
  headlineNews,
  accessRanking,
  artistColumnList,
  interviewList,
  specialFeatures,
  freeMagazine,
  musicVideoList,
  videoMessages,
  liveReports,
  discReview,
  information,
}

enum HomePageTopTabType {
  news,
  live,
  release,
  interview,
  specialFeatures,
  liveReport,
  musicVideo,
  videoMessage,
  tiktok,
  review,
  column,
  magazine,
  special,
  present
}

extension HomePageTopTabTypeExtension on HomePageTopTabType {
  String get title {
    switch (this) {
      case HomePageTopTabType.news:
        return "ニュース";
      case HomePageTopTabType.live:
        return "ライブ";
      case HomePageTopTabType.release:
        return "リリース";
      case HomePageTopTabType.interview:
        return "インタビュー";
      case HomePageTopTabType.specialFeatures:
        return "特集";
      case HomePageTopTabType.liveReport:
        return "ライブレポ";
      case HomePageTopTabType.musicVideo:
        return "MV";
      case HomePageTopTabType.videoMessage:
        return "動画";
      case HomePageTopTabType.tiktok:
        return "TikTok";
      case HomePageTopTabType.review:
        return "レビュー";
      case HomePageTopTabType.column:
        return "コラム";
      case HomePageTopTabType.magazine:
        return "マガジン";
      case HomePageTopTabType.special:
        return "特集";
      case HomePageTopTabType.present:
        return "プレゼント";
    }
  }
}

// TODO モックデータ
const mockImageUrl =
    "https://skream.jp/live_info/assets_c/2022/02/moondrop_tour--thumb-700xauto-159938.jpg";
const mockLinkUrl = "https://skream.jp/live_info/2022/04/01/moon_drop.php";

class HomePageState {
  HomePageTopTabType selectedTopTabType = HomePageTopTabType.news;

  // TODO モックデータ
  TopNews news = TopNews(
      topImages: [
        TopImage(image: mockImageUrl, link: mockLinkUrl),
        TopImage(image: mockImageUrl, link: mockLinkUrl),
        TopImage(image: mockImageUrl, link: mockLinkUrl),
        TopImage(image: mockImageUrl, link: mockLinkUrl),
      ],
      latestUpdateNews: [
        News(
          image: mockImageUrl,
          category: Category.artist,
          location: Location.Japanese,
          dateTime: DateTime(2022, 4, 1, 1, 0),
          isFavorite: true,
          body:
              "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア",
          link: mockLinkUrl,
        ),
        News(
          image: mockImageUrl,
          category: Category.artist,
          location: Location.Overseas,
          dateTime: DateTime(2022, 4, 10, 20, 10),
          isFavorite: false,
          body:
              "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア",
          link: mockLinkUrl,
        ),
        News(
          image: mockImageUrl,
          category: Category.artist,
          location: Location.Overseas,
          dateTime: DateTime(2022, 4, 13, 5, 0),
          isFavorite: false,
          body:
              "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア",
          link: mockLinkUrl,
        ),
        News(
          image: mockImageUrl,
          category: Category.artist,
          location: Location.Japanese,
          dateTime: DateTime(2022, 12, 25, 0, 0),
          isFavorite: true,
          body:
              "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア",
          link: mockLinkUrl,
        ),
      ],
      headlineNews: [
        News(
          image: mockImageUrl,
          category: Category.artist,
          location: Location.Japanese,
          dateTime: DateTime(2022, 4, 25, 20, 0),
          isFavorite: true,
          body:
              "Unlucky Morpheus、フル・アルバム『evolution』のリリースを記念してGEKIROCK CLOTHINGとの限定コラボ・ア",
          link: mockLinkUrl,
        ),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Overseas,
            dateTime: DateTime(2022, 4, 25, 18, 0),
            isFavorite: false,
            body:
                "UNDEROATH、ニュー・アルバム『Voyeurist』再現オンライン・ライヴより「Damn Excuses」の映像公開！",
            link:
                "https://gekirock.com/news/2022/04/underoath_damn_excuses_digital_ghost.php"),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Japanese,
            dateTime: DateTime(2022, 4, 25, 18, 30),
            isFavorite: true,
            body: "MUCC、結成25周年祝うニコ生特番が決定！結成日前日5/3から'1997分'にわたり生配信！",
            link:
                "https://gekirock.com/news/2022/04/mucc_25th_anniversary_streaming.php"),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Overseas,
            dateTime: DateTime(2022, 4, 25, 15, 10),
            isFavorite: false,
            body: "LIMP BIZKIT、約10年ぶりニュー・アルバム『Still Sucks』より「Dad Vibes」MV公開！",
            link:
                "https://gekirock.com/news/2022/04/limp_bizkit_dad_vibes_mv.php"),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Overseas,
            dateTime: DateTime(2022, 4, 25, 15, 10),
            isFavorite: false,
            body: "LIMP BIZKIT、約10年ぶりニュー・アルバム『Still Sucks』より「Dad Vibes」MV公開！",
            link:
                "https://gekirock.com/news/2022/04/limp_bizkit_dad_vibes_mv.php"),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Overseas,
            dateTime: DateTime(2022, 4, 25, 15, 10),
            isFavorite: false,
            body: "LIMP BIZKIT、約10年ぶりニュー・アルバム『Still Sucks』より「Dad Vibes」MV公開！",
            link:
                "https://gekirock.com/news/2022/04/limp_bizkit_dad_vibes_mv.php"),
        News(
            image: mockImageUrl,
            category: Category.artist,
            location: Location.Overseas,
            dateTime: DateTime(2022, 4, 25, 15, 10),
            isFavorite: false,
            body: "LIMP BIZKIT、約10年ぶりニュー・アルバム『Still Sucks』より「Dad Vibes」MV公開！",
            link:
                "https://gekirock.com/news/2022/04/limp_bizkit_dad_vibes_mv.php"),
      ],
      accessRanking: AccessRanking(japanese: [
        // RankingItem(
        //     body:
        //         "ランキング１位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: true,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング２位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: false,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング３位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: false,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング４位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: true,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング５位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: false,
        //     link: mockLinkUrl),
      ], overseas: [
        // RankingItem(
        //     body: "ランキング１位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: false,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング２位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: true,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング３位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: false,
        //     link: mockLinkUrl),
        // RankingItem(
        //     body: "ランキング４位だーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー色々綴る",
        //     isFavorite: true,
        //     link: mockLinkUrl),
      ]),
      artistColumnList: [
        ArtistColumn(
            image: mockImageUrl,
            isFavorite: false,
            body: "2021年12月号掲載",
            link: mockLinkUrl),
        ArtistColumn(
            image: mockImageUrl,
            isFavorite: true,
            body: "2022年1月号掲載",
            link: mockLinkUrl),
        ArtistColumn(
            image: mockImageUrl,
            isFavorite: false,
            body: "2022年2月号掲載",
            link: mockLinkUrl),
        ArtistColumn(
            image: mockImageUrl,
            isFavorite: false,
            body: "2022年3月号掲載",
            link: mockLinkUrl),
        ArtistColumn(
            image: mockImageUrl,
            isFavorite: true,
            body: "2022年4月号掲載",
            link: mockLinkUrl),
      ],
      interviewList: [
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "アルカラ",
            link: mockLinkUrl),
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "BRIDEAR",
            link: mockLinkUrl),
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "FATE GEAR",
            link: mockLinkUrl),
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "ああああああ",
            link: mockLinkUrl),
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "生牡蠣いもこ（神使轟く、激情のごとく。）長いーーーーーーーー",
            link: mockLinkUrl),
        Interview(
            image: mockImageUrl,
            isFavorite: false,
            title: "え",
            link: mockLinkUrl),
      ],
      specialFeatures: [
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "アルカラ",
            link: mockLinkUrl),
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "BRIDEAR",
            link: mockLinkUrl),
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "FATE GEAR",
            link: mockLinkUrl),
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "ああああああ",
            link: mockLinkUrl),
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "生牡蠣いもこ（神使轟く、激情のごとく。）長いーーーーーーーー",
            link: mockLinkUrl),
        SpecialFeature(
            image: mockImageUrl,
            isFavorite: false,
            title: "え",
            link: mockLinkUrl),
      ],
      freeMagazine: FreeMagazine(
          firstImage: mockImageUrl,
          secondImage: mockImageUrl,
          firstArtistName: "吉岡聖恵",
          secondArtistName: "NOMELON NOLEMON",
          firstLink: mockLinkUrl,
          secondLink: mockLinkUrl,
          publisher: "Skream!",
          year: "2022",
          month: "1"),
      musicVideoList: [
        MusicVideo(
            image: mockImageUrl,
            isFavorite: true,
            title: "イヴドット",
            playbackTime: "02:49",
            playCount: "5,737",
            link: mockLinkUrl),
        MusicVideo(
            image: mockImageUrl,
            isFavorite: true,
            title: "イヴドット",
            playbackTime: "02:49",
            playCount: "5,737",
            link: mockLinkUrl),
        MusicVideo(
            image: mockImageUrl,
            isFavorite: false,
            title: "イヴドット",
            playbackTime: "02:49",
            playCount: "5,737",
            link: mockLinkUrl),
        MusicVideo(
            image: mockImageUrl,
            isFavorite: true,
            title: "イヴドット",
            playbackTime: "02:49",
            playCount: "5,737",
            link: mockLinkUrl),
      ],
      videoMessages: [
        VideoMessage(
          image: mockImageUrl,
          isFavorite: true,
          artistName: "NOMELON NOLEMON",
          link: mockLinkUrl,
        ),
        VideoMessage(
          image: mockImageUrl,
          isFavorite: true,
          artistName: "吉岡聖恵",
          link: mockLinkUrl,
        ),
        VideoMessage(
          image: mockImageUrl,
          isFavorite: true,
          artistName: "吉岡聖恵",
          link: mockLinkUrl,
        ),
        VideoMessage(
          image: mockImageUrl,
          isFavorite: true,
          artistName: "NOMELON NOLEMON",
          link: mockLinkUrl,
        ),
        VideoMessage(
          image: mockImageUrl,
          isFavorite: true,
          artistName: "吉岡聖恵",
          link: mockLinkUrl,
        ),
      ],
      liveReports: [
        LiveReport(
          image: mockImageUrl,
          isFavorite: true,
          title: "灰色ロジック",
          date: DateTime(2022, 5, 1),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
        LiveReport(
          image: mockImageUrl,
          isFavorite: true,
          title: "灰色ロジック",
          date: DateTime(2022, 12, 9),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
        LiveReport(
          image: mockImageUrl,
          isFavorite: false,
          title: "灰色ロジック",
          date: DateTime(2022, 12, 17),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
        LiveReport(
          image: mockImageUrl,
          isFavorite: true,
          title: "灰色ロジック",
          date: DateTime(2022, 6, 17),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
        LiveReport(
          image: mockImageUrl,
          isFavorite: false,
          title: "灰色ロジック",
          date: DateTime(2022, 1, 7),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
        LiveReport(
          image: mockImageUrl,
          isFavorite: true,
          title: "灰色ロジック",
          date: DateTime(2022, 12, 17),
          placeName: "＠下北沢SHELTER",
          link: mockLinkUrl,
        ),
      ],
      discReview: DiscReview(japanese: [
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "UVERworld",
            isFavorite: true,
            name: "30",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "UVERworld",
            isFavorite: false,
            name: "30",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "UVERworld",
            isFavorite: true,
            name: "30",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "UVERworld",
            isFavorite: true,
            name: "30",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "UVERworld",
            isFavorite: true,
            name: "30",
            link: mockLinkUrl),
      ], overseas: [
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "BETWEEN YOU & ME",
            isFavorite: true,
            name: "Armageddon",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "BETWEEN YOU & ME",
            isFavorite: true,
            name: "Armageddon",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "BETWEEN YOU & ME",
            isFavorite: true,
            name: "Armageddon",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "BETWEEN YOU & ME",
            isFavorite: true,
            name: "Armageddon",
            link: mockLinkUrl),
        DiscReviewItem(
            image: mockImageUrl,
            artistName: "BETWEEN YOU & ME",
            isFavorite: true,
            name: "Armageddon",
            link: mockLinkUrl),
      ]),
      liveInformation: [
        DailyInformation(date: DateTime(2022, 1, 13), information: [
          ArtistInformation(
              name: "UVERworld",
              location: Location.Japanese,
              link: mockLinkUrl),
          ArtistInformation(
              name: "フラワーガンパニーズ",
              location: Location.Japanese,
              link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
        ]),
        DailyInformation(date: DateTime(2022, 12, 3), information: [
          ArtistInformation(
              name: "フラワーガンパニーズ",
              location: Location.Japanese,
              link: mockLinkUrl),
        ]),
        DailyInformation(date: DateTime(2022, 12, 13), information: [
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
          ArtistInformation(
              name: "UVERworld",
              location: Location.Japanese,
              link: mockLinkUrl),
          ArtistInformation(
              name: "フラワーガンパニーズ",
              location: Location.Japanese,
              link: mockLinkUrl),
          ArtistInformation(
              name: "UVERworld",
              location: Location.Japanese,
              link: mockLinkUrl),
        ])
      ],
      releaseInformation: [
        DailyInformation(date: DateTime(2022, 1, 3), information: [
          ArtistInformation(
              name: "フラワーガンパニーズ",
              location: Location.Japanese,
              link: mockLinkUrl),
        ]),
        DailyInformation(date: DateTime(2022, 12, 13), information: [
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
        ]),
        DailyInformation(date: DateTime(2022, 4, 13), information: [
          // ArtistInformation(name: "フラワーガンパニーズ", location: Location.Japanese, link: mockLinkUrl),
          // ArtistInformation(name: "フラワーガンパニーズ", location: Location.Japanese, link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
          ArtistInformation(
              name: "UVERworld",
              location: Location.Japanese,
              link: mockLinkUrl),
          ArtistInformation(
              name: "海外アーティスト", location: Location.Overseas, link: mockLinkUrl),
        ])
      ]);
}
