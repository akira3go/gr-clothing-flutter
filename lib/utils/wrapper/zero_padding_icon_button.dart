import 'package:flutter/material.dart';

class ZeroPaddingIconButton extends IconButton {
  const ZeroPaddingIconButton({
    Key? key,
    required VoidCallback? onPressed,
    required Widget icon,
    double? iconSize,
  }) : super(
          key: key,
          onPressed: onPressed,
          icon: icon,
          iconSize: iconSize,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
        );
}
