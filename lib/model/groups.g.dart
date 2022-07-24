// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Groups _$$_GroupsFromJson(Map<String, dynamic> json) => _$_Groups(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : User.fromJson(json['createdBy'] as Map<String, dynamic>),
      picture: json['picture'] as String?,
      isProject: json['isProject'] as bool?,
      description: json['description'] as String?,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => UserGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      creator: json['creator'] as bool?,
    );

Map<String, dynamic> _$$_GroupsToJson(_$_Groups instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'createdBy': instance.createdBy,
      'picture': instance.picture,
      'isProject': instance.isProject,
      'description': instance.description,
      'members': instance.members,
      'creator': instance.creator,
    };
