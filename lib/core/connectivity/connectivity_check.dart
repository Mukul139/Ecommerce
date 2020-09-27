import 'package:data_connection_checker/data_connection_checker.dart';

Future<bool> isConnected() async {
  final result = await DataConnectionChecker().connectionStatus;

  return result == DataConnectionStatus.connected;
}
