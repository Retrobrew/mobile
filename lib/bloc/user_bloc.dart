import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
          onGetProfile: (value) {

      })
    });
  }
}
