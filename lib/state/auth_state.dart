import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthStateData with _$AuthStateData {
  factory AuthStateData({
    @Default(null) User? user,
    @Default(null) Session? session,
  }) = _AuthStateData;
}

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  AuthStateData build() {
    return AuthStateData();
  }

  void logIn(Session session, User user) {
    state = state.copyWith(session: session, user: user);
    print('User ${user.id}: ${user.email} has logged in');
  }

  void logOut() {
    state = state.copyWith(session: null, user: null);
  }
}
