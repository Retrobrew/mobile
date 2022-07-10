// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  Authentication? get authentication => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({Authentication? authentication});

  $AuthenticationCopyWith<$Res>? get authentication;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? authentication = freezed,
  }) {
    return _then(_value.copyWith(
      authentication: authentication == freezed
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as Authentication?,
    ));
  }

  @override
  $AuthenticationCopyWith<$Res>? get authentication {
    if (_value.authentication == null) {
      return null;
    }

    return $AuthenticationCopyWith<$Res>(_value.authentication!, (value) {
      return _then(_value.copyWith(authentication: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationCopyWith(
          _$_Authentication value, $Res Function(_$_Authentication) then) =
      __$$_AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call({Authentication? authentication});

  @override
  $AuthenticationCopyWith<$Res>? get authentication;
}

/// @nodoc
class __$$_AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationCopyWith<$Res> {
  __$$_AuthenticationCopyWithImpl(
      _$_Authentication _value, $Res Function(_$_Authentication) _then)
      : super(_value, (v) => _then(v as _$_Authentication));

  @override
  _$_Authentication get _value => super._value as _$_Authentication;

  @override
  $Res call({
    Object? authentication = freezed,
  }) {
    return _then(_$_Authentication(
      authentication: authentication == freezed
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as Authentication?,
    ));
  }
}

/// @nodoc

class _$_Authentication implements _Authentication {
  const _$_Authentication({this.authentication});

  @override
  final Authentication? authentication;

  @override
  String toString() {
    return 'AuthenticationState(authentication: $authentication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            const DeepCollectionEquality()
                .equals(other.authentication, authentication));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authentication));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);
}

abstract class _Authentication implements AuthenticationState {
  const factory _Authentication({final Authentication? authentication}) =
      _$_Authentication;

  @override
  Authentication? get authentication => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getCredential,
    required TResult Function(
            String email,
            dynamic username,
            dynamic dateOfBirth,
            dynamic sexe,
            dynamic country,
            dynamic password)
        signUp,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLogin value) login,
    required TResult Function(onGetCredential value) getCredential,
    required TResult Function(onSignUp value) signUp,
    required TResult Function(onLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$onLoginCopyWith<$Res> {
  factory _$$onLoginCopyWith(_$onLogin value, $Res Function(_$onLogin) then) =
      __$$onLoginCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$$onLoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$onLoginCopyWith<$Res> {
  __$$onLoginCopyWithImpl(_$onLogin _value, $Res Function(_$onLogin) _then)
      : super(_value, (v) => _then(v as _$onLogin));

  @override
  _$onLogin get _value => super._value as _$onLogin;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$onLogin(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onLogin implements onLogin {
  const _$onLogin(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onLogin &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$onLoginCopyWith<_$onLogin> get copyWith =>
      __$$onLoginCopyWithImpl<_$onLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getCredential,
    required TResult Function(
            String email,
            dynamic username,
            dynamic dateOfBirth,
            dynamic sexe,
            dynamic country,
            dynamic password)
        signUp,
    required TResult Function() logout,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLogin value) login,
    required TResult Function(onGetCredential value) getCredential,
    required TResult Function(onSignUp value) signUp,
    required TResult Function(onLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class onLogin implements AuthenticationEvent {
  const factory onLogin(final String username, final String password) =
      _$onLogin;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onLoginCopyWith<_$onLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onGetCredentialCopyWith<$Res> {
  factory _$$onGetCredentialCopyWith(
          _$onGetCredential value, $Res Function(_$onGetCredential) then) =
      __$$onGetCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onGetCredentialCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$onGetCredentialCopyWith<$Res> {
  __$$onGetCredentialCopyWithImpl(
      _$onGetCredential _value, $Res Function(_$onGetCredential) _then)
      : super(_value, (v) => _then(v as _$onGetCredential));

  @override
  _$onGetCredential get _value => super._value as _$onGetCredential;
}

/// @nodoc

class _$onGetCredential implements onGetCredential {
  const _$onGetCredential();

  @override
  String toString() {
    return 'AuthenticationEvent.getCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onGetCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getCredential,
    required TResult Function(
            String email,
            dynamic username,
            dynamic dateOfBirth,
            dynamic sexe,
            dynamic country,
            dynamic password)
        signUp,
    required TResult Function() logout,
  }) {
    return getCredential();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
  }) {
    return getCredential?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getCredential != null) {
      return getCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLogin value) login,
    required TResult Function(onGetCredential value) getCredential,
    required TResult Function(onSignUp value) signUp,
    required TResult Function(onLogout value) logout,
  }) {
    return getCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
  }) {
    return getCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
    required TResult orElse(),
  }) {
    if (getCredential != null) {
      return getCredential(this);
    }
    return orElse();
  }
}

abstract class onGetCredential implements AuthenticationEvent {
  const factory onGetCredential() = _$onGetCredential;
}

/// @nodoc
abstract class _$$onSignUpCopyWith<$Res> {
  factory _$$onSignUpCopyWith(
          _$onSignUp value, $Res Function(_$onSignUp) then) =
      __$$onSignUpCopyWithImpl<$Res>;
  $Res call(
      {String email,
      dynamic username,
      dynamic dateOfBirth,
      dynamic sexe,
      dynamic country,
      dynamic password});
}

/// @nodoc
class __$$onSignUpCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$onSignUpCopyWith<$Res> {
  __$$onSignUpCopyWithImpl(_$onSignUp _value, $Res Function(_$onSignUp) _then)
      : super(_value, (v) => _then(v as _$onSignUp));

  @override
  _$onSignUp get _value => super._value as _$onSignUp;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? dateOfBirth = freezed,
    Object? sexe = freezed,
    Object? country = freezed,
    Object? password = freezed,
  }) {
    return _then(_$onSignUp(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed ? _value.username : username,
      dateOfBirth: dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth,
      sexe: sexe == freezed ? _value.sexe : sexe,
      country: country == freezed ? _value.country : country,
      password: password == freezed ? _value.password : password,
    ));
  }
}

/// @nodoc

class _$onSignUp implements onSignUp {
  const _$onSignUp(
      {required this.email,
      this.username,
      this.dateOfBirth,
      this.sexe,
      this.country,
      this.password});

  @override
  final String email;
  @override
  final dynamic username;
  @override
  final dynamic dateOfBirth;
  @override
  final dynamic sexe;
  @override
  final dynamic country;
  @override
  final dynamic password;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(email: $email, username: $username, dateOfBirth: $dateOfBirth, sexe: $sexe, country: $country, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSignUp &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.sexe, sexe) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(sexe),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$onSignUpCopyWith<_$onSignUp> get copyWith =>
      __$$onSignUpCopyWithImpl<_$onSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getCredential,
    required TResult Function(
            String email,
            dynamic username,
            dynamic dateOfBirth,
            dynamic sexe,
            dynamic country,
            dynamic password)
        signUp,
    required TResult Function() logout,
  }) {
    return signUp(email, username, dateOfBirth, sexe, country, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
  }) {
    return signUp?.call(email, username, dateOfBirth, sexe, country, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, username, dateOfBirth, sexe, country, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLogin value) login,
    required TResult Function(onGetCredential value) getCredential,
    required TResult Function(onSignUp value) signUp,
    required TResult Function(onLogout value) logout,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class onSignUp implements AuthenticationEvent {
  const factory onSignUp(
      {required final String email,
      final dynamic username,
      final dynamic dateOfBirth,
      final dynamic sexe,
      final dynamic country,
      final dynamic password}) = _$onSignUp;

  String get email => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  dynamic get sexe => throw _privateConstructorUsedError;
  dynamic get country => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onSignUpCopyWith<_$onSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onLogoutCopyWith<$Res> {
  factory _$$onLogoutCopyWith(
          _$onLogout value, $Res Function(_$onLogout) then) =
      __$$onLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$onLogoutCopyWith<$Res> {
  __$$onLogoutCopyWithImpl(_$onLogout _value, $Res Function(_$onLogout) _then)
      : super(_value, (v) => _then(v as _$onLogout));

  @override
  _$onLogout get _value => super._value as _$onLogout;
}

/// @nodoc

class _$onLogout implements onLogout {
  const _$onLogout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getCredential,
    required TResult Function(
            String email,
            dynamic username,
            dynamic dateOfBirth,
            dynamic sexe,
            dynamic country,
            dynamic password)
        signUp,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getCredential,
    TResult Function(String email, dynamic username, dynamic dateOfBirth,
            dynamic sexe, dynamic country, dynamic password)?
        signUp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLogin value) login,
    required TResult Function(onGetCredential value) getCredential,
    required TResult Function(onSignUp value) signUp,
    required TResult Function(onLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLogin value)? login,
    TResult Function(onGetCredential value)? getCredential,
    TResult Function(onSignUp value)? signUp,
    TResult Function(onLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class onLogout implements AuthenticationEvent {
  const factory onLogout() = _$onLogout;
}
