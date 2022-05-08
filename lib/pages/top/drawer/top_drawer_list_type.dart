
enum TopDrawerListItemType {
  newArrival,
  category,
  brand,
  japaneseArtist,
  overseasArtist,
}

extension TopDrawerListItemTypeExtension on TopDrawerListItemType {
  String get title {
    switch (this) {
      case TopDrawerListItemType.newArrival:
        return "新着アイテムから探す";
      case TopDrawerListItemType.category:
        return "カテゴリーから探す";
      case TopDrawerListItemType.brand:
        return "ブランドから探す";
      case TopDrawerListItemType.japaneseArtist:
        return "国内アーティストから探す";
      case TopDrawerListItemType.overseasArtist:
        return "海外アーティストから探す";
    }
  }
}

enum TopDrawerItemType {
  aboutThisSite,
  inquiry,
  specifiedTransactionLaw,
  privacyPolicy,
  beginnersGuide,
  shippingHandling,
  shibuya,
  questions,
}

extension TopDrawerItemTypeExtension on TopDrawerItemType {
  String get title {
    switch (this) {
      case TopDrawerItemType.aboutThisSite:
        return "当サイトについて";
      case TopDrawerItemType.inquiry:
        return "お問い合わせ";
      case TopDrawerItemType.specifiedTransactionLaw:
        return "特定商取引法に基づく表示";
      case TopDrawerItemType.privacyPolicy:
        return "プライバシーポリシー";
      case TopDrawerItemType.beginnersGuide:
        return "はじめての方へ";
      case TopDrawerItemType.shippingHandling:
        return "送料・手数料";
      case TopDrawerItemType.shibuya:
        return "渋谷店";
      case TopDrawerItemType.questions:
        return "よくある質問";
    }
  }
}