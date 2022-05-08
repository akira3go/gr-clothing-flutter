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
    }
  }
}
