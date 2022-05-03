import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_video.g.dart';
part 'music_video.freezed.dart';

@freezed
class MusicVideo with _$MusicVideo {
  factory MusicVideo({
    required String image,
    required bool isFavorite,
    required String title,
    required String playbackTime,
    required String playCount,
    required String link,
  }) = _MusicVideo;

  factory MusicVideo.fromJson(Map<String, dynamic> json) => _$MusicVideoFromJson(json);
}