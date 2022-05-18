import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/artist_list/artist_list_page_view_model.dart';
import 'package:gr_clothing_flutter/pages/category_list/artist_search_dropdown.dart';

class ArtistListPage extends ConsumerWidget {
  const ArtistListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final artistSearchDropdown = ref.watch(artistSearchDropdownProvider);
    final artistDataList = ref.watch(artistListPageViewModel).where((element) {
      return element.artistList.where((artist) {
        switch (artistSearchDropdown) {
          case ArtistSearchDropdown.japanese:
            return artist.location == Location.japanese;
          case ArtistSearchDropdown.overseas:
            return artist.location == Location.overseas;
          default:
            return true;
        }
      }).isNotEmpty;
    }).toList();

    return ListView.builder(
      itemCount: artistDataList.length,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
      itemBuilder: (context, index) {
        final artistList = artistDataList[index];
        return Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ColorName.borderGray),
          ),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  artistList.firstCharacter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                itemCount: artistList.artistList.length,
                itemBuilder: (_, artistIndex) {
                  final artist = artistList.artistList[artistIndex];
                  return Text(
                    "${artist.name}(${artist.count})",
                    style: const TextStyle(fontSize: 10, color: Colors.blue),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
