import 'dart:async';

import 'package:ecommerceTest/utils/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'app_widget.dart';


import 'injection/injection.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  HydratedBloc.storage = await HydratedStorage.build();
  final appDocumentDir = await getTemporaryDirectory();

  Hive.init(appDocumentDir.path);

  await Hive.openBox(Constant.paginateDetailBox);

 

  // runApp(AppWidget());
//TODO: start crashlytics
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runZoned(() {
    runApp(AppWidget());
  }, onError: Crashlytics.instance.recordError);
}
