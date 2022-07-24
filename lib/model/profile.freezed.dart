// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get uuid =>
      throw _privateConstructorUsedError; // TODO: attendre amé qu'elle change les dto pour remettre en required
  String get username => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get dateOfBirth =>
      throw _privateConstructorUsedError; //String? friendshipStatus,
  String? get friendshipRequestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String username,
      String? picture,
      String? sex,
      String? country,
      String? dateOfBirth,
      String? friendshipRequestId});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? username = freezed,
    Object? picture = freezed,
    Object? sex = freezed,
    Object? country = freezed,
    Object? dateOfBirth = freezed,
    Object? friendshipRequestId = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      friendshipRequestId: friendshipRequestId == freezed
          ? _value.friendshipRequestId
          : friendshipRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String username,
      String? picture,
      String? sex,
      String? country,
      String? dateOfBirth,
      String? friendshipRequestId});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? username = freezed,
    Object? picture = freezed,
    Object? sex = freezed,
    Object? country = freezed,
    Object? dateOfBirth = freezed,
    Object? friendshipRequestId = freezed,
  }) {
    return _then(_$_Profile(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      friendshipRequestId: friendshipRequestId == freezed
          ? _value.friendshipRequestId
          : friendshipRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {required this.uuid,
      required this.username,
      this.picture,
      this.sex,
      this.country,
      this.dateOfBirth,
      this.friendshipRequestId});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String uuid;
// TODO: attendre amé qu'elle change les dto pour remettre en required
  @override
  final String username;
  @override
  final String? picture;
  @override
  final String? sex;
  @override
  final String? country;
  @override
  final String? dateOfBirth;
//String? friendshipStatus,
  @override
  final String? friendshipRequestId;

  @override
  String toString() {
    return 'Profile(uuid: $uuid, username: $username, picture: $picture, sex: $sex, country: $country, dateOfBirth: $dateOfBirth, friendshipRequestId: $friendshipRequestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.friendshipRequestId, friendshipRequestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(friendshipRequestId));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {required final String uuid,
      required final String username,
      final String? picture,
      final String? sex,
      final String? country,
      final String? dateOfBirth,
      final String? friendshipRequestId}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override // TODO: attendre amé qu'elle change les dto pour remettre en required
  String get username => throw _privateConstructorUsedError;
  @override
  String? get picture => throw _privateConstructorUsedError;
  @override
  String? get sex => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @override //String? friendshipStatus,
  String? get friendshipRequestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
