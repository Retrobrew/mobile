import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    String? email, username, dateOfBirth, password, sexe, country, uuid,
    String? access_token,
    String? picture
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, dynamic> json) => _$AuthenticationFromJson(json);

}