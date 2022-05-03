import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_message.g.dart';
part 'video_message.freezed.dart';

@freezed
class VideoMessage with _$VideoMessage {
  factory VideoMessage({
    required String image,
    required bool isFavorite,
    required String artistName,
    required String link,
  }) = _VideoMessage;

  factory VideoMessage.fromJson(Map<String, dynamic> json) => _$VideoMessageFromJson(json);
}