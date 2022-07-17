// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) onGetMyProfile,
    required TResult Function(String token, String uuid) onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetMyProfile value) onGetMyProfile,
    required TResult Function(onGetProfile value) onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$onGetMyProfileCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$onGetMyProfileCopyWith(
          _$onGetMyProfile value, $Res Function(_$onGetMyProfile) then) =
      __$$onGetMyProfileCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$onGetMyProfileCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$onGetMyProfileCopyWith<$Res> {
  __$$onGetMyProfileCopyWithImpl(
      _$onGetMyProfile _value, $Res Function(_$onGetMyProfile) _then)
      : super(_value, (v) => _then(v as _$onGetMyProfile));

  @override
  _$onGetMyProfile get _value => super._value as _$onGetMyProfile;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$onGetMyProfile(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onGetMyProfile implements onGetMyProfile {
  const _$onGetMyProfile(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'UserEvent.onGetMyProfile(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onGetMyProfile &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$onGetMyProfileCopyWith<_$onGetMyProfile> get copyWith =>
      __$$onGetMyProfileCopyWithImpl<_$onGetMyProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) onGetMyProfile,
    required TResult Function(String token, String uuid) onGetProfile,
  }) {
    return onGetMyProfile(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
  }) {
    return onGetMyProfile?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetMyProfile != null) {
      return onGetMyProfile(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetMyProfile value) onGetMyProfile,
    required TResult Function(onGetProfile value) onGetProfile,
  }) {
    return onGetMyProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
  }) {
    return onGetMyProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetMyProfile != null) {
      return onGetMyProfile(this);
    }
    return orElse();
  }
}

abstract class onGetMyProfile implements UserEvent {
  const factory onGetMyProfile(final String token) = _$onGetMyProfile;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$onGetMyProfileCopyWith<_$onGetMyProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onGetProfileCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$onGetProfileCopyWith(
          _$onGetProfile value, $Res Function(_$onGetProfile) then) =
      __$$onGetProfileCopyWithImpl<$Res>;
  @override
  $Res call({String token, String uuid});
}

/// @nodoc
class __$$onGetProfileCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$onGetProfileCopyWith<$Res> {
  __$$onGetProfileCopyWithImpl(
      _$onGetProfile _value, $Res Function(_$onGetProfile) _then)
      : super(_value, (v) => _then(v as _$onGetProfile));

  @override
  _$onGetProfile get _value => super._value as _$onGetProfile;

  @override
  $Res call({
    Object? token = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$onGetProfile(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onGetProfile implements onGetProfile {
  const _$onGetProfile(this.token, this.uuid);

  @override
  final String token;
  @override
  final String uuid;

  @override
  String toString() {
    return 'UserEvent.onGetProfile(token: $token, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onGetProfile &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$onGetProfileCopyWith<_$onGetProfile> get copyWith =>
      __$$onGetProfileCopyWithImpl<_$onGetProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) onGetMyProfile,
    required TResult Function(String token, String uuid) onGetProfile,
  }) {
    return onGetProfile(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
  }) {
    return onGetProfile?.call(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? onGetMyProfile,
    TResult Function(String token, String uuid)? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetProfile != null) {
      return onGetProfile(token, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetMyProfile value) onGetMyProfile,
    required TResult Function(onGetProfile value) onGetProfile,
  }) {
    return onGetProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
  }) {
    return onGetProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetMyProfile value)? onGetMyProfile,
    TResult Function(onGetProfile value)? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetProfile != null) {
      return onGetProfile(this);
    }
    return orElse();
  }
}

abstract class onGetProfile implements UserEvent {
  const factory onGetProfile(final String token, final String uuid) =
      _$onGetProfile;

  @override
  String get token => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$onGetProfileCopyWith<_$onGetProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  Profile? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({Profile? profile});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }

  @override
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call({Profile? profile});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_$_UserState(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState({this.profile});

  @override
  final Profile? profile;

  @override
  String toString() {
    return 'UserState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({final Profile? profile}) = _$_UserState;

  @override
  Profile? get profile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
