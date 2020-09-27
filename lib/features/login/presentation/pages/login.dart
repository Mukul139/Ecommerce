
import 'package:ecommerceTest/core/connectivity/flushbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection/injection.dart';
import '../../domain/usecases/forgetPassword_bloc/forgetPassword_bloc.dart';
import '../../domain/usecases/login_bloc/login_bloc.dart';
import '../widgets/login.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: MultiBlocProvider(
  providers: [
        BlocProvider(
          create: (context) => getIt<LoginBloc>()),
           BlocProvider(
          create: (context) => getIt<ForgetPasswordBloc>())],
          child: const DataConnectionFlushbar(child:  LogInForm())
          
          
        ),
      ),
    );
  }
}