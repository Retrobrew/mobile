import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {

  factory Profile({
    required String uuid, // TODO: attendre amé qu'elle change les dto pour remettre en required
    required String username,
    String? picture,
    String? sex,
    String? country,
    String? dateOfBirth,
    //String? friendshipStatus,
    String? friendshipRequestId
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

}