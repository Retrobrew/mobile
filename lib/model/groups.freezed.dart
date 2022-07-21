// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Groups _$GroupsFromJson(Map<String, dynamic> json) {
  return _Groups.fromJson(json);
}

/// @nodoc
mixin _$Groups {
  String? get uuid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  User? get createdBy => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  bool? get isProject => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get members => throw _privateConstructorUsedError; // TODO
  bool? get creator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsCopyWith<Groups> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsCopyWith<$Res> {
  factory $GroupsCopyWith(Groups value, $Res Function(Groups) then) =
      _$GroupsCopyWithImpl<$Res>;
  $Res call(
      {String? uuid,
      String? name,
      User? createdBy,
      String? picture,
      bool? isProject,
      String? description,
      List<String>? members,
      bool? creator});

  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$GroupsCopyWithImpl<$Res> implements $GroupsCopyWith<$Res> {
  _$GroupsCopyWithImpl(this._value, this._then);

  final Groups _value;
  // ignore: unused_field
  final $Res Function(Groups) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
    Object? picture = freezed,
    Object? isProject = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? creator = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      isProject: isProject == freezed
          ? _value.isProject
          : isProject // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
abstract class _$$_GroupsCopyWith<$Res> implements $GroupsCopyWith<$Res> {
  factory _$$_GroupsCopyWith(_$_Groups value, $Res Function(_$_Groups) then) =
      __$$_GroupsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uuid,
      String? name,
      User? createdBy,
      String? picture,
      bool? isProject,
      String? description,
      List<String>? members,
      bool? creator});

  @override
  $UserCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$$_GroupsCopyWithImpl<$Res> extends _$GroupsCopyWithImpl<$Res>
    implements _$$_GroupsCopyWith<$Res> {
  __$$_GroupsCopyWithImpl(_$_Groups _value, $Res Function(_$_Groups) _then)
      : super(_value, (v) => _then(v as _$_Groups));

  @override
  _$_Groups get _value => super._value as _$_Groups;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? createdBy = freezed,
    Object? picture = freezed,
    Object? isProject = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? creator = freezed,
  }) {
    return _then(_$_Groups(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as User?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      isProject: isProject == freezed
          ? _value.isProject
          : isProject // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Groups implements _Groups {
  _$_Groups(
      {this.uuid,
      this.name,
      this.createdBy,
      this.picture,
      this.isProject,
      this.description,
      final List<String>? members,
      this.creator})
      : _members = members;

  factory _$_Groups.fromJson(Map<String, dynamic> json) =>
      _$$_GroupsFromJson(json);

  @override
  final String? uuid;
  @override
  final String? name;
  @override
  final User? createdBy;
  @override
  final String? picture;
  @override
  final bool? isProject;
  @override
  final String? description;
  final List<String>? _members;
  @override
  List<String>? get members {
    final value = _members;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// TODO
  @override
  final bool? creator;

  @override
  String toString() {
    return 'Groups(uuid: $uuid, name: $name, createdBy: $createdBy, picture: $picture, isProject: $isProject, description: $description, members: $members, creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Groups &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.isProject, isProject) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.creator, creator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(isProject),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(creator));

  @JsonKey(ignore: true)
  @override
  _$$_GroupsCopyWith<_$_Groups> get copyWith =>
      __$$_GroupsCopyWithImpl<_$_Groups>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupsToJson(this);
  }
}

abstract class _Groups implements Groups {
  factory _Groups(
      {final String? uuid,
      final String? name,
      final User? createdBy,
      final String? picture,
      final bool? isProject,
      final String? description,
      final List<String>? members,
      final bool? creator}) = _$_Groups;

  factory _Groups.fromJson(Map<String, dynamic> json) = _$_Groups.fromJson;

  @override
  String? get uuid => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  User? get createdBy => throw _privateConstructorUsedError;
  @override
  String? get picture => throw _privateConstructorUsedError;
  @override
  bool? get isProject => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<String>? get members => throw _privateConstructorUsedError;
  @override // TODO
  bool? get creator => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GroupsCopyWith<_$_Groups> get copyWith =>
      throw _privateConstructorUsedError;
}
