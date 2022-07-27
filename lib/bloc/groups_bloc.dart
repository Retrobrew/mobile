import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrobrew/provider/groups_api_provider.dart';
import '../model/groups.dart';
import '../model/post.dart';
import '../model/user.dart';

part 'groups_event.dart';

part 'groups_state.dart';

part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final GroupsApiProvider _groupsApiProvider;

  GroupsBloc(this._groupsApiProvider) : super(GroupsState.initial()) {
    on<GroupsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
          onGetMyGroups: (onGetMyGroups value) async {
        List<Groups> groups = await _groupsApiProvider.getMyGroups("Bearer ${value.token}");

        List<Groups> mockedGroup = List.of([
          Groups(
              uuid: "5df8733a-3161-47fa-a3c8-1dfd07db21fd",
              name: "Pokemon (MOCKED)",
              creator: true,
              members: [],
              createdBy: User(uuid: 'ba103edd-3e2b-4ed3-ae9c-40c9c3a32e3e')),
          Groups(
            uuid: "fdcf1916-5884-4392-b03e-4691069933d5",
            name: "Avatar the last bender",
            creator: false,
            createdBy: User(uuid: 'ba103edd-3e2b-4ed3-ae9c-40c9c3a32ze3e'),
            members: [],
          ),
          Groups(
              uuid: "bc10618f-fb8d-4089-af8c-e3be75e35e2c",
              name: "My C Project",
              creator: true)
        ]);

        emit(GroupsState.initial().copyWith(groups: groups));
      }, onGetPosts: (onGetPosts value) async {
        List<Post> posts = await _groupsApiProvider.getPosts(
            value.uuid, "Bearer ${value.token}");

        emit(GroupsState.initial().copyWith(posts: posts));
      }, onJoin: (onJoin value) async {
        await _groupsApiProvider.join("Bearer ${value.token}", value.uuid);
      }, onLeave: (onLeave value) async {
        await _groupsApiProvider.leave("Bearer ${value.token}", value.uuid);
      },
          onGetAll: (onGetAll value) async {
            var groups = await _groupsApiProvider.getAllGroups("Bearer ${value.token}");

            emit(GroupsState.initial().copyWith(groups: groups));
      });
    });
  }
}
