import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/features/login/data/repositories/auth_failure.dart';
import 'package:ecommerceTest/features/login/data/repositories/auth_repo.dart';
import 'package:ecommerceTest/features/login/domain/usecases/forgetPassword_bloc/forgetPassword_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ecommerceTest/features/login/domain/entities/auth_interface.dart';
import 'package:ecommerceTest/features/login/domain/repositories/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._authInterface,
  ) : super(LoginState.initial());

  final Auth _authInterface;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        isSubmitting: false,
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        isSubmitting: false,
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authInterface.registerWithEmailAndPassword,
      );
    }, signInWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authInterface.signInWithEmailAndPassword,
      );
    }, signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authInterface.signInWithGoogle();
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess));
    }, signInWithFacebookPressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authInterface.signInWithFacebook();
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess));
    }, signInWithPhone: (e) async* {
      final isPhoneNumberValid = state.phoneNumber.isValid();
      if (isPhoneNumberValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        _authInterface
            .signInWithPhone(phoneNumber: state.phoneNumber)
            .stream
            .listen((phoneAuthStatus) {
          add(LoginEvent.recievedPhoneAuthState(
              phoneAuthStatus: phoneAuthStatus));
        });
      } else {
        yield state.copyWith(
          showErrorMessagesOnPhoneNumberDialogBox: true,
          authFailureOrSuccessOption: none(),
        );
      }
    }, otpChanged: (e) async* {
      yield state.copyWith(
        showOtpDialogBox: false,
        isSubmitting: false,
        otp: Otp(e.otpStr),
        authFailureOrSuccessOption: none(),
      );
    }, phoneNumberChanged: (e) async* {
      yield state.copyWith(
        isSubmitting: false,
        phoneNumber: PhoneNumber(e.phoneNumberStr),
        authFailureOrSuccessOption: none(),
      );
    }, submittedOtp: (e) async* {
      final isotpValid = state.otp.isValid();
      if (isotpValid) {
        final _phoneAuthStatus = await _authInterface.otp(otp: state.otp);
        yield state.copyWith(
          showOtpDialogBox: false,
          authFailureOrSuccessOption: some(_phoneAuthStatus),
        );
      } else {
        yield state.copyWith(
          showErrorMessagesOnOtpDialogBox: true,
          authFailureOrSuccessOption: none(),
        );
      }
    }, hideDialogBox: (e) async* {
      yield state.copyWith(
        authFailureOrSuccessOption: none(),
      );
    }, recievedPhoneAuthState: (e) async* {
      switch (e.phoneAuthStatus) {
        case PhoneAuthStatus.codeSend:
          yield state.copyWith(
            showOtpDialogBox: true,
            authFailureOrSuccessOption: none(),
          );
          break;
        case PhoneAuthStatus.error:
          yield state.copyWith(
            authFailureOrSuccessOption:
                some(left(const AuthFailure.serverError())),
          );
          break;
        case PhoneAuthStatus.verificationCompelete:
          yield state.copyWith(
            showOtpDialogBox: false,
            authFailureOrSuccessOption: some(right(unit)),
          );
          break;
      }
    });
  }

  Stream<LoginState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
