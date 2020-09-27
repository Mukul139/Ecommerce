import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerceTest/core/connectivity/connectivity_bloc/connectivity_bloc.dart';

class DataConnectionFlushbar extends StatelessWidget {
  const DataConnectionFlushbar({Key key, @required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Flushbar dataConnectionError;
    Flushbar dataConnectionDisconnected;
    return BlocListener<ConnectivityBloc, ConnectivityState>(
      listener: (context, dataConnectionState) {
        dataConnectionState.dataConnectionStatus.fold(() {
          dataConnectionDisconnected?.dismiss(true);
          dataConnectionError?.dismiss(true);
        },
            (a) => a.fold((l) {
                  dataConnectionDisconnected?.dismiss(true);
                  dataConnectionError?.dismiss(true);
                  dataConnectionError =
                      FlushbarHelper.createError(message: l, duration: null)
                        ..show(context);
                }, (r) {
                  dataConnectionDisconnected?.dismiss(true);
                  dataConnectionError?.dismiss(true);

                  dataConnectionDisconnected = FlushbarHelper.createInformation(
                      message: r, duration: null)
                    ..show(context);
                }));
      },
      child: child,
    );
  }
}
