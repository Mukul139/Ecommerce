import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../injection/injection.dart';
import '../../performance_craslytics/crashlytics.dart';

part 'connectivity_bloc.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc() : super(ConnectivityState.initial());

  @override
  Stream<ConnectivityState> mapEventToState(ConnectivityEvent event) async* {
    yield* event.map(watchForDataConnectivity: (e) async* {
      DataConnectionChecker().onStatusChange.listen(
        (dataConnectionStatus) => add(
            ConnectivityEvent.connectionStatusRecived(dataConnectionStatus)),
        onError: (e, StackTrace s) {
          add(const ConnectivityEvent.errorOnNetworkConnection());
          getIt<CrashlyticsLogger>().recordError(
              e: e, s: s, context: 'Data connection checker Stream error');
        },
      );
    }, connectionStatusRecived: (ConnectionStatusRecived value) async* {
      print(value.status.toString());
      if (value.status == DataConnectionStatus.connected) {
        yield state.copyWith(dataConnectionStatus: none());
      } else {
        yield ConnectivityState.initial();
        yield state.copyWith(
            dataConnectionStatus: some(right('No internet')),
           );
      }
    }, errorOnNetworkConnection: (ErrorOnNetworkConnection value) async* {
      yield state.copyWith(dataConnectionStatus: some(left('Network error')));
    }, checkDataConnectivity: (_) async* {
      final result = await DataConnectionChecker().connectionStatus;
      yield ConnectivityState.initial();

      add(ConnectivityEvent.connectionStatusRecived(result));
    });
  }
}
