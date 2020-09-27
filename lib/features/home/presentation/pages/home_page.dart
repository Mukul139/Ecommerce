import 'package:auto_route/auto_route.dart';

import 'package:ecommerceTest/core/connectivity/flushbar_widget.dart';
import 'package:ecommerceTest/core/current_user.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart';
import 'package:ecommerceTest/features/home/domain/usecases/home_bloc/home_bloc.dart';
import 'package:ecommerceTest/features/home/presentation/widgets/home_screen.dart';
import 'package:ecommerceTest/features/home/presentation/widgets/search_page.dart';
import 'package:ecommerceTest/features/login/domain/usecases/auth_bloc/auth_bloc.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:ecommerceTest/router/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchScren = false;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                }),
            IconButton(
                icon: Icon(!searchScren?Icons.search:Icons.home),
                onPressed: () {
                  setState(() {
                    searchScren = !searchScren;
                  });
                }),
          ],
        ),
        body: BlocProvider(
          create: (context) => getIt<HomeBloc>()..add(const HomeEvent.refresh()),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              print(state);
              state.maybeMap(
                orElse: () {},
                unauthenticated: (value) =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage),
              );
            },
            child: DataConnectionFlushbar(
                child: searchScren ? SearchPage() : HomePageScreen( )),
          ),
        ),
      ),
    );
  }
}
