import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/model/groups.dart';
import 'package:retrobrew/model/user.dart';

part 'feeds.freezed.dart';
part 'feeds.g.dart';

@freezed
class Feeds with _$Feeds {

  factory Feeds({
    required String uuid, // ok
    required User author, // ok
    required String content, // ok
    required DateTime createdAt, // ok
    required String title,  // ok
    String? media, // ok
    Groups? postedIn, // ?
    bool? likedByUser,
    int? likesNb
  }) = _Feeds;

  factory Feeds.fromJson(Map<String, dynamic> json) => _$FeedsFromJson(json);

}