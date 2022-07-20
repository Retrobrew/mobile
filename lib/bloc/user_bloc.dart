import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supercharged/supercharged.dart';

import '../model/friend_request.dart';
import '../model/profile.dart';
import '../provider/user_api_provider.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UsersBloc extends Bloc<UserEvent, UserState> {
  final UserApiProvider _userApiProvider;

  UsersBloc(this._userApiProvider) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async => {
          await event.map<FutureOr<void>>(
              onGetMyProfile: (value) async {
                Profile user = await _userApiProvider.getMyProfile(value.token);
                emit(UserState.initial().copyWith(profile: user));
              },
              onGetProfile: (value) {},
              onGetFriendsRequestReceived:
                  (_onGetFriendsRequestReceived value) async {
                var friendsRequestReceived = await _userApiProvider
                    .getFriendRequestReceived("Bearer ${value.token}");
                emit(UserState.initial()
                    .copyWith(friendsRequest: friendsRequestReceived));
              },
              onResponseRequest: (_onResponseRequest value) async {
                if (value.status == STATUS.accepted) {
                  await _userApiProvider.sendAcceptFriend(
                      "Bearer ${value.token}", value.uuid);


                }else {
                  await _userApiProvider.sendDeclineFriend(
                      "Bearer ${value.token}", value.uuid);
                }

                var list = state.friendsRequest!
                    .map((e) => e)
                    .filter((element) => element.id.toString() != value.uuid)
                    .toList();

                emit(UserState.initial().copyWith(friendsRequest: list));
              })
        });
  }
}
