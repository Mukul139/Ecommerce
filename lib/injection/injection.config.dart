// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../features/login/domain/entities/auth_interface.dart';
import '../features/login/domain/usecases/auth_bloc/auth_bloc.dart';
import '../features/login/data/repositories/auth_repo.dart';
import '../core/connectivity/connectivity_bloc/connectivity_bloc.dart';
import '../core/performance_craslytics/crashlytics.dart';
import '../core/current_user.dart';
import 'module_injection.dart';
import '../features/login/domain/usecases/forgetPassword_bloc/forgetPassword_bloc.dart';
import '../features/home/domain/usecases/home_bloc/home_bloc.dart';
import '../features/home/domain/entities/interface.dart';
import '../features/home/data/repositories/home_repo.dart';
import '../features/login/domain/usecases/login_bloc/login_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<ConnectivityBloc>(() => ConnectivityBloc());
  gh.lazySingleton<Crashlytics>(() => firebaseInjectableModule.crashlytics);
  gh.lazySingleton<CrashlyticsLogger>(
      () => CrashlyticsLogger(get<Crashlytics>()));
  gh.lazySingleton<FacebookLogin>(() => firebaseInjectableModule.facebookLogin);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<Logger>(() => firebaseInjectableModule.logger);
  gh.lazySingleton<Razorpay>(() => firebaseInjectableModule.razorpay);
  gh.lazySingleton<CurrentUser>(() => CurrentUser(get<FirebaseAuth>()));
  gh.lazySingleton<HomePageInterface>(
      () => HomeRepo(get<CurrentUser>(), get<FirebaseFirestore>()));
  gh.lazySingleton<Auth>(() => AuthRepo(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<CurrentUser>(),
        get<FacebookLogin>(),
      ));
  gh.factory<AuthBloc>(() => AuthBloc(get<Auth>()));
  gh.factory<ForgetPasswordBloc>(() => ForgetPasswordBloc(get<Auth>()));
  gh.factory<HomeBloc>(() => HomeBloc(get<HomePageInterface>()));
  gh.factory<LoginBloc>(() => LoginBloc(get<Auth>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
