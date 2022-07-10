import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {

  factory Post({
    required String uuid,
    required String author,
    required String content,
    required DateTime createdAt,
    required String title,
    String? media,
    String? postedIn,
    String? lastUpdatedAt,
    String? parent}) = _Posts;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

}