part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required PhoneNumber phoneNumber,
    @required Otp otp,
    @required bool showErrorMessages,
     @required bool showErrorMessagesOnOtpDialogBox,
      @required bool showErrorMessagesOnPhoneNumberDialogBox,
    @required bool showOtpDialogBox,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        phoneNumber: PhoneNumber(''),
        otp: Otp(''),
        showOtpDialogBox: false, showErrorMessagesOnOtpDialogBox: true, showErrorMessagesOnPhoneNumberDialogBox: true,
      );
}
