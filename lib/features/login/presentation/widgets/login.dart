import 'package:auto_route/auto_route.dart';
import 'package:ecommerceTest/router/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

import '../../domain/usecases/auth_bloc/auth_bloc.dart';
import '../../domain/usecases/forgetPassword_bloc/forgetPassword_bloc.dart';
import '../../domain/usecases/login_bloc/login_bloc.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  TextEditingController forgetPasswordMailController;

  @override
  // ignore: always_declare_return_types
  initState() {
    super.initState();
    forgetPasswordMailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Flushbar flush;
    Flushbar form;
    Flushbar loading;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
      
       
        state.map(
          initial: (_) {},
          authenticated: (value) {
            print('push to home');
            ExtendedNavigator.of(context).replace(Routes.homePage);
          },
          unauthenticated: (_) {
            print('unauth');
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
          emailNotVerified: (EmailNotVerified value) {
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
          profileNotCompeleted: (ProfileNotCompeleted value) {
            // ExtendedNavigator.of(context).replace(Routes.formPage);
          },
        );
      },
      child: BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
          listener: (context, forgetPasswordstate) {
            forgetPasswordstate.maybeMap(
              orElse: () => null,
              cancelled: (value) {
                FlushbarHelper.createError(message: 'Cancelled').show(context);
              },
              showDialogBox: (value) {
                _showDialogBox(
                    context: context, dialogBoxType: DialogBoxType.forgetPwd);
              },
              serverError: (value) {
                FlushbarHelper.createError(message: 'Server error').show(context);
              },
              linkSendSuccessfully: (value) {
                FlushbarHelper.createSuccess(message: value.message).show(context);
              },
              invalidMail: (value) {
                FlushbarHelper.createError(message: 'Invalid Mail').show(context);
              },
            );
          },
          builder: (context, forgetPasswordstate) {
            return BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.isSubmitting) {
              loading = FlushbarHelper.createLoading(
                  message: 'Connecting to server',
                  linearProgressIndicator: const LinearProgressIndicator(),
                  duration: null)
                ..show(context);
            }
            if (state.isSubmitting) {
              loading?.dismiss(true);
            }
            if (state.showOtpDialogBox) {
              print('show OtpDailogBox');
              form = FlushbarHelper.createInputFlushbar(
                  textForm: Form(
                autovalidate: state.showErrorMessagesOnOtpDialogBox,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    TextFormField(
                      autofocus: true,
                      decoration: const InputDecoration(
                        labelText: 'otp',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<LoginBloc>()
                          .add(LoginEvent.otpChanged(value)),
                      validator: (_)
                      
                      
                      {print( context.bloc<LoginBloc>().state.otp.value);
                        
                        return    context.bloc<LoginBloc>().state.otp.value.fold(
                                (f) => f.maybeMap(
                                  invalidOtp: (_) => 'Invalid otp',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );},
                      keyboardType: TextInputType.number,
                    ),
                    RaisedButton(
                      onPressed: () {
                        form.dismiss(true);
                        context
                            .bloc<LoginBloc>()
                            .add(const LoginEvent.submittedOtp());
                      },
                      child: const Text('submit'),
                    )
                  ],
                ),
              ))
                ..show(context);
            }

            state.authFailureOrSuccessOption.fold(
              () {
                // form?.dismiss(true);
              },
              (either) {
                // form?.dismiss(true);
                either.fold(
                  (failure) {
                    failure.map(
                        emailAlreadyInUse: (_) => FlushbarHelper.createError(
                                message: 'Email already in use')
                            .show(context),
                        cancelledByUser: (_) {
                          FlushbarHelper.createError(message: 'Cancelled')
                              .show(context);
                        },
                        catchedError: (_) {
                          FlushbarHelper.createError(message: _.error)
                              .show(context);
                        },
                        emailNotVerified: (_) {
                          flush = FlushbarHelper.createAction(
                              message: 'Please Verify your mailId',
                              button: FlatButton(
                                  onPressed: () {
                                    flush.dismiss(true);
                                    context.bloc<ForgetPasswordBloc>().add(
                                        const ForgetPasswordEvent
                                            .sendEmailVerificationLink());
                                  },
                                  child: const Text('Resend',
                                      style: TextStyle(
                                        color:
                                            Color.fromRGBO(10, 100, 140, 0.3),
                                      ))),
                              duration: const Duration(seconds: 10))
                            ..show(context);
                        },
                        invalidEmailAndPasswordCombination: (_) {
                          FlushbarHelper.createError(
                                  message:
                                      'Invalid email and password combination')
                              .show(context);
                        },
                        serverError: (_) {
                          FlushbarHelper.createError(message: 'Server error')
                              .show(context);
                        },
                        invalidUser: (_) {
                          FlushbarHelper.createError(message: 'Wrong Otp')
                              .show(context);
                        });
                  },
                  (_) {
                    context
                        .bloc<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: <Widget>[
                  // .textAlignment(TextAlign.center).fontSize(130),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.emailChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.emailAddress.value.fold(
                              (f) => f.maybeMap(
                                invalidEmail: (_) => 'Invalid email',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    // controller: passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.passwordChanged(value)),
                    validator: (_) =>
                        context.bloc<LoginBloc>().state.password.value.fold(
                              (f) => f.maybeMap(
                                shortPassword: (_) => 'Short password',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: () => context.bloc<LoginBloc>().add(
                              const LoginEvent
                                  .signInWithEmailAndPasswordPressed()),
                          child: const Text('SIGN IN'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: FlatButton(
                          onPressed: () => context.bloc<LoginBloc>().add(
                              const LoginEvent
                                  .registerWithEmailAndPasswordPressed()),
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                      onPressed: () => context
                          .bloc<LoginBloc>()
                          .add(const LoginEvent.signInWithGooglePressed()),
                      color: Colors.lightBlue,
                      child: const Text(
                        'SIGN IN WITH GOOGLE',
                      )
                      // .textColor(Colors.white).bold(),
                      ),
                  RaisedButton(
                      onPressed: () => context
                          .bloc<LoginBloc>()
                          .add(const LoginEvent.signInWithFacebookPressed()),
                      color: Colors.lightBlue,
                      child: const Text(
                        'SIGN IN WITH FACEBOOK',
                      )
                      // .textColor(Colors.white).bold(),
                      ),
                  RaisedButton(
                      onPressed: () {
                        _showDialogBox(
                            context: context,
                            dialogBoxType: DialogBoxType.phoneNumber,
                            state: state);
                      },
                      color: Colors.lightBlue,
                      child: const Text(
                        'SIGN IN WITH PHONE',
                      )
                      // .textColor(Colors.white).bold(),
                      ),
                  RaisedButton(
                      onPressed: () {
                        context.bloc<ForgetPasswordBloc>().add(
                            const ForgetPasswordEvent
                                .showForgetPasswordDialogBox());
                      },
                      color: Colors.lightBlue,
                      child: const Text(
                        'forget mail',
                      )
                      // .textColor(Colors.white).bold(),
                      ),
                ],
              ),
            );
          },
        );
      },
    ));
  }

  @override
  void dispose() {
    forgetPasswordMailController.dispose();
    super.dispose();
  }

  void _showDialogBox(
      {@required BuildContext context,
      @required DialogBoxType dialogBoxType,
      LoginState state}) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final yyDialog = YYDialog();
    yyDialog.build(context)
      ..dismissCallBack = () {
        // context
        //     .bloc<ForgetPasswordBloc>()
        //     .add(const ForgetPasswordEvent.cancelledDialogBox());
      }
      ..margin = const EdgeInsets.all(10)
      ..width = width * .8
      ..height = height * .32
      ..text(
        padding: const EdgeInsets.only(top: 15),
        text: dialogBoxType == DialogBoxType.forgetPwd
            ? "Forgot Password"
            : 'Sign With Phone Number',
        fontSize: 17.0,
        alignment: Alignment.center,
        color: Colors.black,
      )
      ..decoration = BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white)
      ..margin = const EdgeInsets.all(30)
      ..animatedFunc = (child, scaleIn) {
        return ScaleTransition(
          scale: Tween(begin: 0.0, end: 1.0).animate(scaleIn),
          child: child,
        );
      }
      ..widget(Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (dialogBoxType == DialogBoxType.forgetPwd)
                TextField(
                  autofocus: true,
                  decoration:
                      const InputDecoration(hintText: "Enter email address"),
                  controller: forgetPasswordMailController,
                ),
              if (dialogBoxType == DialogBoxType.phoneNumber)
                Form(
                  autovalidate: state.showErrorMessagesOnPhoneNumberDialogBox,
                  child: TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      labelText: 'phone number',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<LoginBloc>()
                        .add(LoginEvent.phoneNumberChanged(value)),
                    validator: (_) => context
                        .bloc<LoginBloc>()
                        .state
                        .phoneNumber
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidPhoneNumber: (_) => 'Invalid phone number',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              const SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  if (dialogBoxType == DialogBoxType.forgetPwd) {
                    context.bloc<ForgetPasswordBloc>().add(
                        ForgetPasswordEvent.sendPasswordForgetMail(
                            emailAddress: forgetPasswordMailController.text));
                    yyDialog?.dismiss();
                  } else {
                    print(context.bloc<LoginBloc>().state.phoneNumber.value);
                    context
                        .bloc<LoginBloc>()
                        .add(const LoginEvent.signInWithPhone());

                    if (context.bloc<LoginBloc>().state.phoneNumber.isValid())
                      yyDialog?.dismiss();
                  }

//  Navigator.pop(context);
                },
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ))
      ..show();
  }
}

enum DialogBoxType { forgetPwd, phoneNumber }
