part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.onGetMyProfile(String token) = onGetMyProfile;
  const factory UserEvent.onGetProfile(String token, String uuid) = onGetProfile;

}
