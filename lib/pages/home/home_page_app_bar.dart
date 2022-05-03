import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class HomePageAppBar extends AppBar {
  HomePageAppBar({
    Key? key,
    required Function() onTapNotification,
    required Function() onTapFavorite,
    required Function() onTapPeople,
    required Function() onTapSearch,
    required ValueChanged<String>? onChanged,
  }) : super(
          key: key,
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 12.0),
                      child: TextField(
                        maxLines: 1,
                        onChanged: onChanged,
                        onSubmitted: (text) => onTapSearch(),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => onTapSearch(),
                    icon: const Icon(
                      Icons.search_rounded,
                      color: ColorName.gray,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: onTapPeople,
              icon: const Icon(
                Icons.people,
                color: ColorName.peoples,
              ),
              iconSize: 40,
            ),
            IconButton(
              onPressed: onTapFavorite,
              icon: const Icon(Icons.menu_book, color: ColorName.peoples),
              iconSize: 40,
            ),
            IconButton(
              onPressed: onTapNotification,
              icon: const Icon(Icons.notifications, color: ColorName.peoples),
              iconSize: 40,
            ),
          ],
        );
}
