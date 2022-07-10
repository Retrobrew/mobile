part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login(String username, String password) = onLogin;
  const factory AuthenticationEvent.getCredential() = onGetCredential;
  const factory AuthenticationEvent.signUp({
    required String email, username, dateOfBirth, sexe, country, password
  }) = onSignUp;
  const factory AuthenticationEvent.logout() = onLogout;
}