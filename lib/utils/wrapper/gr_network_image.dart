import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GRNetworkImage extends CachedNetworkImage {
  GRNetworkImage({Key? key, required String imageUrl, double? height, double? width})
      : super(
            key: key,
            height: height,
            width: width,
            imageUrl: imageUrl,
            httpHeaders: {"Content-Type": "application/json"},
            fit: BoxFit.contain);
}
