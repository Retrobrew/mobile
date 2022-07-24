// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) {
  return _UserGroup.fromJson(json);
}

/// @nodoc
mixin _$UserGroup {
  String get adhesionDate => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGroupCopyWith<UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupCopyWith<$Res> {
  factory $UserGroupCopyWith(UserGroup value, $Res Function(UserGroup) then) =
      _$UserGroupCopyWithImpl<$Res>;
  $Res call({String adhesionDate, String group, int id, String user});
}

/// @nodoc
class _$UserGroupCopyWithImpl<$Res> implements $UserGroupCopyWith<$Res> {
  _$UserGroupCopyWithImpl(this._value, this._then);

  final UserGroup _value;
  // ignore: unused_field
  final $Res Function(UserGroup) _then;

  @override
  $Res call({
    Object? adhesionDate = freezed,
    Object? group = freezed,
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      adhesionDate: adhesionDate == freezed
          ? _value.adhesionDate
          : adhesionDate // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserGroupCopyWith<$Res> implements $UserGroupCopyWith<$Res> {
  factory _$$_UserGroupCopyWith(
          _$_UserGroup value, $Res Function(_$_UserGroup) then) =
      __$$_UserGroupCopyWithImpl<$Res>;
  @override
  $Res call({String adhesionDate, String group, int id, String user});
}

/// @nodoc
class __$$_UserGroupCopyWithImpl<$Res> extends _$UserGroupCopyWithImpl<$Res>
    implements _$$_UserGroupCopyWith<$Res> {
  __$$_UserGroupCopyWithImpl(
      _$_UserGroup _value, $Res Function(_$_UserGroup) _then)
      : super(_value, (v) => _then(v as _$_UserGroup));

  @override
  _$_UserGroup get _value => super._value as _$_UserGroup;

  @override
  $Res call({
    Object? adhesionDate = freezed,
    Object? group = freezed,
    Object? id = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_UserGroup(
      adhesionDate: adhesionDate == freezed
          ? _value.adhesionDate
          : adhesionDate // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGroup implements _UserGroup {
  _$_UserGroup(
      {required this.adhesionDate,
      required this.group,
      required this.id,
      required this.user});

  factory _$_UserGroup.fromJson(Map<String, dynamic> json) =>
      _$$_UserGroupFromJson(json);

  @override
  final String adhesionDate;
  @override
  final String group;
  @override
  final int id;
  @override
  final String user;

  @override
  String toString() {
    return 'UserGroup(adhesionDate: $adhesionDate, group: $group, id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGroup &&
            const DeepCollectionEquality()
                .equals(other.adhesionDate, adhesionDate) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adhesionDate),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserGroupCopyWith<_$_UserGroup> get copyWith =>
      __$$_UserGroupCopyWithImpl<_$_UserGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGroupToJson(this);
  }
}

abstract class _UserGroup implements UserGroup {
  factory _UserGroup(
      {required final String adhesionDate,
      required final String group,
      required final int id,
      required final String user}) = _$_UserGroup;

  factory _UserGroup.fromJson(Map<String, dynamic> json) =
      _$_UserGroup.fromJson;

  @override
  String get adhesionDate => throw _privateConstructorUsedError;
  @override
  String get group => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserGroupCopyWith<_$_UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
