part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.onGetAll(String? token) = onGetAll;
  const factory GroupsEvent.onGetMyGroups(String? token) = onGetMyGroups;
  const factory GroupsEvent.onGetPosts(String token, String uuid) = onGetPosts;
  const factory GroupsEvent.onLeave(String token, String uuid) = onLeave;
  const factory GroupsEvent.onJoin(String token, String uuid) = onJoin;

}