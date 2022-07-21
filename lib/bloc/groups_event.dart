part of 'groups_bloc.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.onGetAll(String? token) = onGetAll;
  const factory GroupsEvent.onGetPosts(String token, String uuid) = onGetPosts;

}