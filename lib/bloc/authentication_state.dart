part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    Authentication? authentication
  }) = _Authentication;

      factory AuthenticationState.initial() => const AuthenticationState();
}