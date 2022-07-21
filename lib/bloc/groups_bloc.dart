import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrobrew/provider/groups_api_provider.dart';
import '../model/groups.dart';
import '../model/post.dart';

part 'groups_event.dart';

part 'groups_state.dart';

part 'groups_bloc.freezed.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final GroupsApiProvider _groupsApiProvider;

  GroupsBloc(this._groupsApiProvider) : super(GroupsState.initial()) {
    on<GroupsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
          onGetAll: (onGetAll value) async {

            //List<Groups> groups = await _groupsApiProvider.getMyGroups("Bearer ${value.token}");

            List<Groups> mockedGroup = List.of([
              Groups(
                  uuid: "5df8733a-3161-47fa-a3c8-1dfd07db21fd",
                  name: "Pokemon",
                  creator: true
              ),
              Groups(
                  uuid: "a02c10fd-ff32-4572-a68c-4c283264dcd1",
                  name: "test",
                  creator: false
              ),
              Groups(
                  uuid: "bc10618f-fb8d-4089-af8c-e3be75e35e2c",
                  name: "My C Project",
                  creator: true
              )
            ]);

            emit(GroupsState.initial().copyWith(groups: mockedGroup));

          },
          onGetPosts: (onGetPosts value) async {

            List<Post> posts = await _groupsApiProvider.getPosts(value.uuid, "Bearer ${value.token}");

            emit(GroupsState.initial().copyWith(posts: posts));

          }
      );
    });
  }
}
