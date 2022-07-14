import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/model/user.dart';

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
    List<String>? members // TODO
  }) = _Groups;

  factory Groups.fromJson(Map<String, dynamic> json) => _$GroupsFromJson(json);

}