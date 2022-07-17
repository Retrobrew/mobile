part of 'user_bloc.dart';

@freezed
class UserState with _$UserState  {

  const factory UserState({
    Profile? profile
  }) = _UserState;

  factory UserState.initial() => const UserState();

}