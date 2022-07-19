part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.onGetMyProfile(String token) = onGetMyProfile;
  const factory UserEvent.onGetProfile(String token, String uuid) = onGetProfile;
  const factory UserEvent.onGetFriendsRequestReceived(String token) = _onGetFriendsRequestReceived;
  const factory UserEvent.onResponseRequest(String token, String uuid, STATUS status) = _onResponseRequest;
}
