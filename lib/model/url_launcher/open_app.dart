import 'package:gr_clothing_flutter/model/url_launcher/open_browser.dart';
import 'package:url_launcher/url_launcher_string.dart';

void openApp(LinkApp linkApp) async {
  if (await canLaunchUrlString(linkApp.appUrl)) {
    launchUrlString(linkApp.appUrl, mode: LaunchMode.externalApplication);
    return;
  }
  openBrowser(linkApp.linkUrl);
}

enum LinkApp {
  twitter,
  instagram,
  googleMap,
}

extension LinkAppExtension on LinkApp {
  String get appUrl {
    switch (this) {
      case LinkApp.twitter:
        return "twitter://user?screen_name=gekirock_shop";
      case LinkApp.instagram:
        return "instagram://user?username=gekirock_clothing";
      case LinkApp.googleMap:
        return "https://www.google.com/maps/place/%E3%80%92150-0042+%E6%9D%B1%E4%BA%AC%E9%83%BD%E6%B8%8B%E8%B0%B7%E5%8C%BA%E5%AE%87%E7%94%B0%E5%B7%9D%E7%94%BA%EF%BC%91%EF%BC%91%E2%88%92%EF%BC%91+%E6%9F%B3%E5%85%89%E3%83%93%E3%83%AB%E5%88%A5%E9%A4%A8+B1+GEKIROCK+CLOTHING/@35.6627035,139.6972771,15z/data=!4m2!3m1!1s0x60188ca94be92315:0xa9f2ea0c7bb3a70c";
    }
  }

  LinkUrl get linkUrl {
    switch (this) {
      case LinkApp.twitter:
        return LinkUrl.twitter;
      case LinkApp.instagram:
        return LinkUrl.instagram;
      case LinkApp.googleMap:
        return LinkUrl.googleMap;
    }
  }
}
