import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class SearchContainerWidget extends StatelessWidget {
  const SearchContainerWidget({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ColorName.lightGray),
          ),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(8),
          child: child,
        ),
        Container(
          margin: const EdgeInsets.only(left: 12),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          color: Colors.white,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorName.gray,
            ),
          ),
        ),
      ],
    );
  }
}
