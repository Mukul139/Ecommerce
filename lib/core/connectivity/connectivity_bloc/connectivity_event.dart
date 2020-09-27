part of 'connectivity_bloc.dart';

@freezed
abstract class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.errorOnNetworkConnection() = ErrorOnNetworkConnection;
  const factory ConnectivityEvent.watchForDataConnectivity() = WatchForDataConnectivity;
  const factory ConnectivityEvent.connectionStatusRecived(DataConnectionStatus status) = ConnectionStatusRecived;
  const factory ConnectivityEvent.checkDataConnectivity() = CheckDataConnectivity;
}