import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistListPageViewModel = StateNotifierProvider.autoDispose<
    ArtistListPageViewModel, List<ArtistList>>((ref) {
  final artistListData = [
    ArtistList(
      firstCharacter: "0-9",
      artistList: [
        Artist(
          name: "9mm Parabellum Bullet",
          count: 4,
          location: Location.japanese,
        ),
      ],
    ),
    ArtistList(
      firstCharacter: "A",
      artistList: [
        Artist(
          name: "AA=",
          count: 5,
          location: Location.japanese,
        ),
        Artist(
          name: "ADAM at",
          count: 1,
          location: Location.japanese,
        ),
        Artist(
          name: "a flood of circle",
          count: 2,
          location: Location.overseas,
        ),
        Artist(
          name: "Afterglow",
          count: 4,
          location: Location.japanese,
        ),
        Artist(
          name: "ALL OFF",
          count: 7,
          location: Location.overseas,
        ),
        Artist(
          name: "amazarashi",
          count: 2,
          location: Location.overseas,
        ),
        Artist(
          name: "ANGRY FROG REBIRTH",
          count: 1,
          location: Location.overseas,
        ),
        Artist(
          name: "aquarifa",
          count: 2,
          location: Location.japanese,
        ),
      ],
    ),
    ArtistList(
      firstCharacter: "B",
      artistList: [
        Artist(
          name: "BABYMETAL",
          count: 3,
          location: Location.overseas,
        ),
        Artist(
          name: "BACKDATE NOVEMBER",
          count: 1,
          location: Location.japanese,
        ),
        Artist(
          name: "BACK LIFT",
          count: 3,
          location: Location.japanese,
        ),
        Artist(
          name: "BanG Dream!(バンドリ!)",
          count: 88,
          location: Location.overseas,
        ),
        Artist(
          name: "BEFORE MY LIFE FAILS",
          count: 4,
          location: Location.japanese,
        ),
        Artist(
          name: "Bentham",
          count: 23,
          location: Location.overseas,
        ),
        Artist(
          name: "BRIDEAR",
          count: 1,
          location: Location.japanese,
        ),
      ],
    ),
    ArtistList(
      firstCharacter: "C",
      artistList: [
        Artist(
          name: "Crossfaith",
          count: 1,
          location: Location.overseas,
        ),
        Artist(
          name: "CROSS RECORDS",
          count: 3,
          location: Location.japanese,
        ),
      ],
    ),
    ArtistList(
      firstCharacter: "D",
      artistList: [
        Artist(
          name: "DADAROMA",
          count: 6,
          location: Location.japanese,
        ),
        Artist(
          name: "DESURABBITS",
          count: 2,
          location: Location.japanese,
        ),
        Artist(
          name: "DEXCORE",
          count: 2,
          location: Location.overseas,
        ),
        Artist(
          name: "DIAWOLF",
          count: 7,
          location: Location.overseas,
        ),
      ],
    ),
    ArtistList(
      firstCharacter: "E",
      artistList: [
        Artist(
          name: "FOUR GET ME A NOTS",
          count: 2,
          location: Location.overseas,
        ),
      ],
    ),
  ];
  return ArtistListPageViewModel(artistListData);
});

class ArtistListPageViewModel extends StateNotifier<List<ArtistList>> {
  ArtistListPageViewModel(state) : super(state);
}

class ArtistList {
  ArtistList({
    required this.firstCharacter,
    required this.artistList,
  });

  final String firstCharacter;
  final List<Artist> artistList;
}

class Artist {
  Artist({
    required this.name,
    required this.count,
    required this.location,
  });

  final String name;
  final int count;
  final Location location;
}

enum Location {
  japanese,
  overseas,
}
