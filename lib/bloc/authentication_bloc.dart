import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/authentication.dart';
import '../model/login.dart';
import '../provider/authentication_api_provider.dart';

part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';


class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationApiProvider _provider;

  AuthenticationBloc(this._provider) : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async => {
      await event.map<FutureOr<void>>(
          login: (e) async {
            try {
              var data = await _provider.getToken(Login(email: e.username, password: e.password));
              emit(AuthenticationState.initial().copyWith(authentication: Authentication(access_token: data.access_token)));

            }catch(e) {
              print(e);
            }
          },
          logout: (e) async {
          },
          getCredential: (e) => e
      )
    });

  }



}