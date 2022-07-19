import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {

  factory User({
    required String uuid, // TODO: attendre amé qu'elle change les dto pour remettre en required
    String? username,
    String? email,
    String? dateOfBirth,
    String? sexe,
    String? country,
    String? picture
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}