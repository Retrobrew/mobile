// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _Authentication.fromJson(json);
}

/// @nodoc
mixin _$Authentication {
  String? get email => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;
  dynamic get sexe => throw _privateConstructorUsedError;
  dynamic get country => throw _privateConstructorUsedError;
  String? get access_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      dynamic username,
      dynamic dateOfBirth,
      dynamic password,
      dynamic sexe,
      dynamic country,
      String? access_token});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  final Authentication _value;
  // ignore: unused_field
  final $Res Function(Authentication) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? dateOfBirth = freezed,
    Object? password = freezed,
    Object? sexe = freezed,
    Object? country = freezed,
    Object? access_token = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sexe: sexe == freezed
          ? _value.sexe
          : sexe // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$$_AuthenticationCopyWith(
          _$_Authentication value, $Res Function(_$_Authentication) then) =
      __$$_AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      dynamic username,
      dynamic dateOfBirth,
      dynamic password,
      dynamic sexe,
      dynamic country,
      String? access_token});
}

/// @nodoc
class __$$_AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res>
    implements _$$_AuthenticationCopyWith<$Res> {
  __$$_AuthenticationCopyWithImpl(
      _$_Authentication _value, $Res Function(_$_Authentication) _then)
      : super(_value, (v) => _then(v as _$_Authentication));

  @override
  _$_Authentication get _value => super._value as _$_Authentication;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? dateOfBirth = freezed,
    Object? password = freezed,
    Object? sexe = freezed,
    Object? country = freezed,
    Object? access_token = freezed,
  }) {
    return _then(_$_Authentication(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed ? _value.username : username,
      dateOfBirth: dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth,
      password: password == freezed ? _value.password : password,
      sexe: sexe == freezed ? _value.sexe : sexe,
      country: country == freezed ? _value.country : country,
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authentication implements _Authentication {
  _$_Authentication(
      {this.email,
      this.username,
      this.dateOfBirth,
      this.password,
      this.sexe,
      this.country,
      this.access_token});

  factory _$_Authentication.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationFromJson(json);

  @override
  final String? email;
  @override
  final dynamic username;
  @override
  final dynamic dateOfBirth;
  @override
  final dynamic password;
  @override
  final dynamic sexe;
  @override
  final dynamic country;
  @override
  final String? access_token;

  @override
  String toString() {
    return 'Authentication(email: $email, username: $username, dateOfBirth: $dateOfBirth, password: $password, sexe: $sexe, country: $country, access_token: $access_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.sexe, sexe) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.access_token, access_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(sexe),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(access_token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationToJson(this);
  }
}

abstract class _Authentication implements Authentication {
  factory _Authentication(
      {final String? email,
      final dynamic username,
      final dynamic dateOfBirth,
      final dynamic password,
      final dynamic sexe,
      final dynamic country,
      final String? access_token}) = _$_Authentication;

  factory _Authentication.fromJson(Map<String, dynamic> json) =
      _$_Authentication.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  dynamic get username => throw _privateConstructorUsedError;
  @override
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  @override
  dynamic get password => throw _privateConstructorUsedError;
  @override
  dynamic get sexe => throw _privateConstructorUsedError;
  @override
  dynamic get country => throw _privateConstructorUsedError;
  @override
  String? get access_token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
