/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/artist_icon.png
  AssetGenImage get artistIcon =>
      const AssetGenImage('assets/images/artist_icon.png');

  /// File path: assets/images/blog_icon.png
  AssetGenImage get blogIcon =>
      const AssetGenImage('assets/images/blog_icon.png');

  /// File path: assets/images/brand_icon.png
  AssetGenImage get brandIcon =>
      const AssetGenImage('assets/images/brand_icon.png');

  /// File path: assets/images/category_icon.png
  AssetGenImage get categoryIcon =>
      const AssetGenImage('assets/images/category_icon.png');

  /// File path: assets/images/google_map_icon.png
  AssetGenImage get googleMapIcon =>
      const AssetGenImage('assets/images/google_map_icon.png');

  /// File path: assets/images/instagram_icon.png
  AssetGenImage get instagramIcon =>
      const AssetGenImage('assets/images/instagram_icon.png');

  /// File path: assets/images/logo_icon.png
  AssetGenImage get logoIcon =>
      const AssetGenImage('assets/images/logo_icon.png');

  /// File path: assets/images/news_icon.png
  AssetGenImage get newsIcon =>
      const AssetGenImage('assets/images/news_icon.png');

  /// File path: assets/images/sale_icon.png
  AssetGenImage get saleIcon =>
      const AssetGenImage('assets/images/sale_icon.png');

  /// File path: assets/images/twitter_icon.png
  AssetGenImage get twitterIcon =>
      const AssetGenImage('assets/images/twitter_icon.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
