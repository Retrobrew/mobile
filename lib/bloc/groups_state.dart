part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState  {

  const factory GroupsState({
    required List<Groups> groups,
    required List<Post> posts
  }) = _GroupsState;

  factory GroupsState.initial() => const GroupsState(groups: [], posts: []);

}