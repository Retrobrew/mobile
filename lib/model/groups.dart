import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/model/user.dart';
import 'package:retrobrew/model/user_group.dart';

part 'groups.freezed.dart';
part 'groups.g.dart';

@freezed
class Groups with _$Groups {

  factory Groups({
    String? uuid,
    String? name,
    User? createdBy,
    String? picture,
    bool? isProject,
    String? description,
    List<UserGroup>? members,
    bool? creator
  }) = _Groups;

  factory Groups.fromJson(Map<String, dynamic> json) => _$GroupsFromJson(json);

}