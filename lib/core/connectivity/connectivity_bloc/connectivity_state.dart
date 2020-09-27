part of 'connectivity_bloc.dart';

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @required Option<Either<String, String>> dataConnectionStatus,
    
  }) = _ConnectivityState;

  factory ConnectivityState.initial() => ConnectivityState(
        dataConnectionStatus: none(),
      );
}
