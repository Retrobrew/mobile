import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/model/groups.dart';
import 'package:retrobrew/model/user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {

  factory Post({
    String? uuid,
    String? title,
    int? commentsNb,
    User? author,
    String? content,
    String? createdAt,
    Groups? postedIn,
    bool? likedByUser,
    int? likesNb,
    String? media
  }) = _Posts;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

}