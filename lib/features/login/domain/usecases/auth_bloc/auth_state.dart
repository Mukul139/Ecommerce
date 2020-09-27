part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.emailNotVerified(User user) = EmailNotVerified;
  const factory AuthState.profileNotCompeleted(User user) =
      ProfileNotCompeleted;
}
