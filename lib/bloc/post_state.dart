part of 'post_bloc.dart';

@freezed
class PostState with _$PostState  {

  const factory PostState({
    required List<Post> posts,
    required bool hasReachedMax,
    String? token
    }) = _PostState;

  factory PostState.initial() => const PostState(posts: [], hasReachedMax: false);

}