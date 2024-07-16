// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthStateData {
  User? get user => throw _privateConstructorUsedError;
  Session? get session => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateDataCopyWith<AuthStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateDataCopyWith<$Res> {
  factory $AuthStateDataCopyWith(
          AuthStateData value, $Res Function(AuthStateData) then) =
      _$AuthStateDataCopyWithImpl<$Res, AuthStateData>;
  @useResult
  $Res call({User? user, Session? session});
}

/// @nodoc
class _$AuthStateDataCopyWithImpl<$Res, $Val extends AuthStateData>
    implements $AuthStateDataCopyWith<$Res> {
  _$AuthStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateDataImplCopyWith<$Res>
    implements $AuthStateDataCopyWith<$Res> {
  factory _$$AuthStateDataImplCopyWith(
          _$AuthStateDataImpl value, $Res Function(_$AuthStateDataImpl) then) =
      __$$AuthStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, Session? session});
}

/// @nodoc
class __$$AuthStateDataImplCopyWithImpl<$Res>
    extends _$AuthStateDataCopyWithImpl<$Res, _$AuthStateDataImpl>
    implements _$$AuthStateDataImplCopyWith<$Res> {
  __$$AuthStateDataImplCopyWithImpl(
      _$AuthStateDataImpl _value, $Res Function(_$AuthStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? session = freezed,
  }) {
    return _then(_$AuthStateDataImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ));
  }
}

/// @nodoc

class _$AuthStateDataImpl implements _AuthStateData {
  _$AuthStateDataImpl({this.user = null, this.session = null});

  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final Session? session;

  @override
  String toString() {
    return 'AuthStateData(user: $user, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateDataImplCopyWith<_$AuthStateDataImpl> get copyWith =>
      __$$AuthStateDataImplCopyWithImpl<_$AuthStateDataImpl>(this, _$identity);
}

abstract class _AuthStateData implements AuthStateData {
  factory _AuthStateData({final User? user, final Session? session}) =
      _$AuthStateDataImpl;

  @override
  User? get user;
  @override
  Session? get session;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateDataImplCopyWith<_$AuthStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
