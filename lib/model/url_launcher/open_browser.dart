import 'package:url_launcher/url_launcher_string.dart';

void openBrowser(LinkUrl linkUrl) async {
  if (await canLaunchUrlString(linkUrl.urlString)) {
    launchUrlString(linkUrl.urlString, mode: LaunchMode.externalApplication);
  }
}

enum LinkUrl {
  signUpAccount,
  forgotPassword,
  contact,
  aboutsThisSite,
  order,
  privacyPolicy,
  forBeginner,
  freightAndFee,
  sibuya,
  faq,
  blog,
  twitter,
  instagram,
  googleMap,
}

extension LinkUrlExtension on LinkUrl {
  String get urlString {
    switch (this) {
      case LinkUrl.signUpAccount:
        return "https://shop.gekirock.com/entry/kiyaku.php";
      case LinkUrl.forgotPassword:
        return "https://shop.gekirock.com/forgot/";
      case LinkUrl.contact:
        return "https://shop.gekirock.com/contact/";
      case LinkUrl.aboutsThisSite:
        return "https://shop.gekirock.com/abouts/";
      case LinkUrl.order:
        return "https://shop.gekirock.com/order/";
      case LinkUrl.privacyPolicy:
        return "https://shop.gekirock.com/guide/privacy.php";
      case LinkUrl.forBeginner:
        return "https://shop.gekirock.com/user_data/for_beginner.php";
      case LinkUrl.freightAndFee:
        return "https://shop.gekirock.com/user_data/freight_and_fee.php";
      case LinkUrl.sibuya:
        return "https://shop.gekirock.com/shibuya/";
      case LinkUrl.faq:
        return "https://shop.gekirock.com/user_data/faq.php";
      case LinkUrl.blog:
        return "http://rock-fashion.jugem.jp/#gsc.tab=0";
      case LinkUrl.twitter:
        return "https://twitter.com/gekirock_shop";
      case LinkUrl.instagram:
        return "https://www.instagram.com/gekirock_clothing/";
      case LinkUrl.googleMap:
        return "https://www.google.com/maps/place/%E3%80%92150-0042+%E6%9D%B1%E4%BA%AC%E9%83%BD%E6%B8%8B%E8%B0%B7%E5%8C%BA%E5%AE%87%E7%94%B0%E5%B7%9D%E7%94%BA%EF%BC%91%EF%BC%91%E2%88%92%EF%BC%91+%E6%9F%B3%E5%85%89%E3%83%93%E3%83%AB%E5%88%A5%E9%A4%A8+B1+GEKIROCK+CLOTHING/@35.6627035,139.6972771,15z/data=!4m2!3m1!1s0x60188ca94be92315:0xa9f2ea0c7bb3a70c";
    }
  }
}
