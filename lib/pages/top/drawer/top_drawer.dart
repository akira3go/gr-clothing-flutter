import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';
import 'package:gr_clothing_flutter/model/url_launcher/open_app.dart';
import 'package:gr_clothing_flutter/model/url_launcher/open_browser.dart';
import 'package:gr_clothing_flutter/pages/top/drawer/top_drawer_list_type.dart';
import 'package:gr_clothing_flutter/pages/top/top_page_category.dart';
import 'package:gr_clothing_flutter/pages/category_list/artist_search_dropdown.dart';

class TopDrawer extends ConsumerWidget {
  const TopDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.skyBlue,
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: ColorName.skyBlue,
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 50,
          ),
          child: Column(
            children: [
              _drawerList(ref),
              _linkDrawer,
              _appsWidget,
            ],
          ),
        ),
      ),
    );
  }

  // 新着アイテムから探す　など
  Widget _drawerList(WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: TopDrawerListItemType.values.length,
      itemBuilder: (context, index) {
        final itemType = TopDrawerListItemType.values[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            switch (itemType) {
              case TopDrawerListItemType.category:
                ref.read(topPageCategoryProvider.notifier).state =
                    itemType.topPageCategory;
                break;
              case TopDrawerListItemType.japaneseArtist:
                ref.read(artistSearchDropdownProvider.notifier).state =
                    ArtistSearchDropdown.japanese;
                break;
              case TopDrawerListItemType.overseasArtist:
                ref.read(artistSearchDropdownProvider.notifier).state =
                    ArtistSearchDropdown.overseas;
                break;
              default:
                break;
            }
          },
          child: Container(
            color: ColorName.skyDeepBlue,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 20,
            ),
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(
              itemType.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }

  // 当サイトについて　など
  Widget get _linkDrawer {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: (TopDrawerItemType.values.length / 2).ceil(),
      itemBuilder: (context, index) {
        final startItem = TopDrawerItemType.values[(index * 2) + 0];
        final endItem = TopDrawerItemType.values[(index * 2) + 1];
        return Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => openBrowser(startItem.linkUrl),
                child: Container(
                  color: ColorName.skyDeepBlue,
                  height: 45,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  margin: const EdgeInsets.only(right: 1, bottom: 1),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      startItem.title,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => openBrowser(endItem.linkUrl),
                child: Container(
                  color: ColorName.skyDeepBlue,
                  height: 45,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  margin: const EdgeInsets.only(bottom: 1),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      endItem.title,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget get _appsWidget {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: () => openApp(LinkApp.twitter),
              child: Column(
                children: [
                  Assets.images.twitterIcon.image(),
                  const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Twitter",
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: () => openApp(LinkApp.instagram),
              child: Column(
                children: [
                  Assets.images.instagramIcon.image(),
                  const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Instagram",
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: () => openApp(LinkApp.googleMap),
              child: Column(
                children: [
                  Assets.images.googleMapIcon.image(),
                  const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Map",
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 6,
            child: GestureDetector(
              onTap: () => openBrowser(LinkUrl.blog),
              child: Column(
                children: [
                  Assets.images.blogIcon.image(),
                  const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Blog",
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
