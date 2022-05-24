import 'package:flutter/material.dart';

class GradationBorder extends Container {
  GradationBorder({
    Key? key,
    required double height,
    Color color = Colors.white,
    bool reverse = false,
  }) : super(
          key: key,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(1),
                color.withOpacity(0.9),
                color.withOpacity(0.8),
                color.withOpacity(0.7),
                color.withOpacity(0.6),
                color.withOpacity(0.5),
                color.withOpacity(0.4),
                color.withOpacity(0.3),
                color.withOpacity(0.2),
                color.withOpacity(0.1),
              ],
              begin: reverse ? Alignment.bottomCenter : Alignment.topCenter,
              end: reverse ? Alignment.topCenter : Alignment.bottomCenter,
            ),
          ),
        );
}
