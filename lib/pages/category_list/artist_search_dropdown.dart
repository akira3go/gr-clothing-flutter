import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistSearchDropdownProvider = StateProvider<ArtistSearchDropdown>((ref) {
  return ArtistSearchDropdown.all;
});

enum ArtistSearchDropdown {
  all,
  japanese,
  overseas,
}

extension ArtistSearchDropdownExtension on ArtistSearchDropdown {
  String get title {
    switch (this) {
      case ArtistSearchDropdown.all:
        return "すべて";
      case ArtistSearchDropdown.japanese:
        return "国内";
      case ArtistSearchDropdown.overseas:
        return "海外";
    }
  }
}
