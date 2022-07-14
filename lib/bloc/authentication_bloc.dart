import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/provider/user_api_provider.dart';
import '../model/authentication.dart';
import '../model/login.dart';
import '../provider/authentication_api_provider.dart';

part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';


class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationApiProvider _authProvider;
  final UserApiProvider _userProvider;


  AuthenticationBloc(this._authProvider, this._userProvider) : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async => {
      await event.map<FutureOr<void>>(
          login: (e) async {
            try {
              var data = await _authProvider.getToken(Login(email: e.username, password: e.password));
              emit(AuthenticationState.initial().copyWith(authentication: Authentication(access_token: data.access_token)));

            }catch(e) {
              print(e);
            }
          },
          logout: (e) async {
          },
          getCredential: (e) => e,
          signUp: (onSignUp value) async {
            Authentication user = Authentication(
              email: value.email,
              username: value.username,
              sexe: value.sexe,
              password: value.password,
              dateOfBirth: value.dateOfBirth,
              country: value.country
            );
            try {
              var data = await _userProvider.signUp(user);
              user = user.copyWith(access_token: data.access_token);
              emit(AuthenticationState.initial().copyWith(authentication: user));
            }catch(e) {
              print(e);
            }
          }
      )
    });

  }



}