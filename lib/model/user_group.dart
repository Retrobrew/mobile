import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group.freezed.dart';

part 'user_group.g.dart';

@freezed
class UserGroup with _$UserGroup {
  factory UserGroup(
      {required String adhesionDate,
      required String group,
      required int id,
      required String user}) = _UserGroup;

  factory UserGroup.fromJson(Map<String, dynamic> json) => _$UserGroupFromJson(json);

}
