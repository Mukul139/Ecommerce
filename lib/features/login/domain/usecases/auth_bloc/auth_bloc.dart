import 'package:bloc/bloc.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecommerceTest/core/current_user.dart';
import 'package:ecommerceTest/features/login/domain/entities/auth_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._auth,
  ) : super(const AuthState.initial());

  final Auth _auth;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        print('auth checked');
        final userOption = await _auth.getSignedInUser();
        getIt<Logger>().i(userOption);
        print(userOption);
        yield* userOption.fold(
          () async* {
          yield  const AuthState.unauthenticated();
          },
          (user) async*  {
            // if (user.isemailverified && !user.isProfileCompleted) {
            //   return AuthState.profileNotCompeleted(user);
            // }
            if (user.isemailverified) {
              print('auth');
              yield AuthState.authenticated(user);
            } else {
              print('emailNot verified');
              yield AuthState.emailNotVerified(user);
            }
          },
        );
      },
      signedOut: (e) async* {
        await _auth.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
