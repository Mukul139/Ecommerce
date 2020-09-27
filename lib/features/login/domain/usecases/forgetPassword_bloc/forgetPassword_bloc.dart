
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import '../../entities/auth_interface.dart';
import '../../repositories/value_objects.dart';

part 'forgetPassword_bloc.freezed.dart';
part 'forgetPassword_event.dart';
part 'forgetPassword_state.dart';

@injectable
class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc(this._auth) : super(const ForgetPasswordState.initial());
  final Auth _auth;
  @override
  Stream<ForgetPasswordState> mapEventToState(
      ForgetPasswordEvent event) async* {
    yield* event.map(sendPasswordForgetMail: (e) async* {
      final EmailAddress emailAddress = EmailAddress(e.emailAddress);
      if (emailAddress.isValid()) {
        final sendOption =
            await _auth.sendPasswordForgetMail(emailAddress: emailAddress);
        yield sendOption.fold(
            () => const ForgetPasswordState.serverError(),
            (a) => const ForgetPasswordState.linkSendSuccessfully(
                message: 'Reset link has been send successfully'));
      } else {
        yield const ForgetPasswordState.invalidMail();
      }
    }, showForgetPasswordDialogBox: (e) async* {
      yield const ForgetPasswordState.showDialogBox();
    }, sendEmailVerificationLink: (e) async* {
      final sendOption = await _auth.sendEmailVerification();
      yield sendOption.fold(
          () => const ForgetPasswordState.serverError(),
          (a) => const ForgetPasswordState.linkSendSuccessfully(
              message: 'Verification link has been send successfully'));
    }, cancelledDialogBox: (e) async* {
      print('cancelled');
      yield const ForgetPasswordState.cancelled();
    });
  }
}
