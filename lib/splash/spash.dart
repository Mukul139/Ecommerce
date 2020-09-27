import 'package:auto_route/auto_route.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerceTest/core/connectivity/flushbar_widget.dart';
import 'package:logger/logger.dart';

import '../features/login/domain/usecases/auth_bloc/auth_bloc.dart';
import '../router/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      child: const Scaffold(
        body: DataConnectionFlushbar(
            child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
