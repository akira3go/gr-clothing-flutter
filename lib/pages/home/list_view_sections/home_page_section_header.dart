import 'package:flutter/material.dart';

class HomePageSectionHeader extends StatelessWidget {
  const HomePageSectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 30,
      padding: const EdgeInsets.only(left: 8),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
