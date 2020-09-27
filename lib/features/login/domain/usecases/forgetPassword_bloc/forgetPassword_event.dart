part of 'forgetPassword_bloc.dart';

@freezed
abstract class ForgetPasswordEvent with _$ForgetPasswordEvent {
  const factory ForgetPasswordEvent.sendPasswordForgetMail({ @required  String emailAddress}) = SendPasswordForgetMail;
 const factory ForgetPasswordEvent.showForgetPasswordDialogBox() = ShowForgetPasswordDialogBox;    
  const factory ForgetPasswordEvent.sendEmailVerificationLink() = SendEmailVerification;
  const factory ForgetPasswordEvent.cancelledDialogBox() = CancelledDialogBox;
}