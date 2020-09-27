import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/connectivity/connectivity_bloc/connectivity_bloc.dart';
import 'features/login/domain/usecases/auth_bloc/auth_bloc.dart';
import 'injection/injection.dart';
import 'router/router.gr.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          ), 
         
          BlocProvider(
            create: (_) => getIt<ConnectivityBloc>()
              ..add(const ConnectivityEvent.watchForDataConnectivity()),
          ),
        ],
        child: MaterialApp(
          builder: ExtendedNavigator.builder<Router>(
            router: Router(),
          
          ),
          title: 'EcommerceTest',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            primaryColor: const Color(0xffB24592),
            accentColor: Colors.blueAccent,
            appBarTheme: ThemeData.light().appBarTheme.copyWith(
                  brightness: Brightness.dark,
                  color:const Color(0xffB24592),
                  iconTheme: ThemeData.dark().iconTheme,
                ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue[900],
              foregroundColor: Colors.white,
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ));
  }
}
