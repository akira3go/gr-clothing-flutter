import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview.g.dart';
part 'interview.freezed.dart';

@freezed
class Interview with _$Interview {
  factory Interview({
    required String image,
    required bool isFavorite,
    required String title,
    required String link,
  }) = _Interview;

  factory Interview.fromJson(Map<String, dynamic> json) => _$InterviewFromJson(json);
}