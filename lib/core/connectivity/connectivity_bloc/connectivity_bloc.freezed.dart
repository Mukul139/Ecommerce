// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ConnectivityEventTearOff {
  const _$ConnectivityEventTearOff();

// ignore: unused_element
  ErrorOnNetworkConnection errorOnNetworkConnection() {
    return const ErrorOnNetworkConnection();
  }

// ignore: unused_element
  WatchForDataConnectivity watchForDataConnectivity() {
    return const WatchForDataConnectivity();
  }

// ignore: unused_element
  ConnectionStatusRecived connectionStatusRecived(DataConnectionStatus status) {
    return ConnectionStatusRecived(
      status,
    );
  }

// ignore: unused_element
  CheckDataConnectivity checkDataConnectivity() {
    return const CheckDataConnectivity();
  }
}

// ignore: unused_element
const $ConnectivityEvent = _$ConnectivityEventTearOff();

mixin _$ConnectivityEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result errorOnNetworkConnection(),
    @required Result watchForDataConnectivity(),
    @required Result connectionStatusRecived(DataConnectionStatus status),
    @required Result checkDataConnectivity(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result errorOnNetworkConnection(),
    Result watchForDataConnectivity(),
    Result connectionStatusRecived(DataConnectionStatus status),
    Result checkDataConnectivity(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    @required Result watchForDataConnectivity(WatchForDataConnectivity value),
    @required Result connectionStatusRecived(ConnectionStatusRecived value),
    @required Result checkDataConnectivity(CheckDataConnectivity value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    Result watchForDataConnectivity(WatchForDataConnectivity value),
    Result connectionStatusRecived(ConnectionStatusRecived value),
    Result checkDataConnectivity(CheckDataConnectivity value),
    @required Result orElse(),
  });
}

abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res>;
}

class _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  final ConnectivityEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectivityEvent) _then;
}

abstract class $ErrorOnNetworkConnectionCopyWith<$Res> {
  factory $ErrorOnNetworkConnectionCopyWith(ErrorOnNetworkConnection value,
          $Res Function(ErrorOnNetworkConnection) then) =
      _$ErrorOnNetworkConnectionCopyWithImpl<$Res>;
}

class _$ErrorOnNetworkConnectionCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements $ErrorOnNetworkConnectionCopyWith<$Res> {
  _$ErrorOnNetworkConnectionCopyWithImpl(ErrorOnNetworkConnection _value,
      $Res Function(ErrorOnNetworkConnection) _then)
      : super(_value, (v) => _then(v as ErrorOnNetworkConnection));

  @override
  ErrorOnNetworkConnection get _value =>
      super._value as ErrorOnNetworkConnection;
}

class _$ErrorOnNetworkConnection implements ErrorOnNetworkConnection {
  const _$ErrorOnNetworkConnection();

  @override
  String toString() {
    return 'ConnectivityEvent.errorOnNetworkConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorOnNetworkConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result errorOnNetworkConnection(),
    @required Result watchForDataConnectivity(),
    @required Result connectionStatusRecived(DataConnectionStatus status),
    @required Result checkDataConnectivity(),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return errorOnNetworkConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result errorOnNetworkConnection(),
    Result watchForDataConnectivity(),
    Result connectionStatusRecived(DataConnectionStatus status),
    Result checkDataConnectivity(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorOnNetworkConnection != null) {
      return errorOnNetworkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    @required Result watchForDataConnectivity(WatchForDataConnectivity value),
    @required Result connectionStatusRecived(ConnectionStatusRecived value),
    @required Result checkDataConnectivity(CheckDataConnectivity value),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return errorOnNetworkConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    Result watchForDataConnectivity(WatchForDataConnectivity value),
    Result connectionStatusRecived(ConnectionStatusRecived value),
    Result checkDataConnectivity(CheckDataConnectivity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorOnNetworkConnection != null) {
      return errorOnNetworkConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorOnNetworkConnection implements ConnectivityEvent {
  const factory ErrorOnNetworkConnection() = _$ErrorOnNetworkConnection;
}

abstract class $WatchForDataConnectivityCopyWith<$Res> {
  factory $WatchForDataConnectivityCopyWith(WatchForDataConnectivity value,
          $Res Function(WatchForDataConnectivity) then) =
      _$WatchForDataConnectivityCopyWithImpl<$Res>;
}

class _$WatchForDataConnectivityCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements $WatchForDataConnectivityCopyWith<$Res> {
  _$WatchForDataConnectivityCopyWithImpl(WatchForDataConnectivity _value,
      $Res Function(WatchForDataConnectivity) _then)
      : super(_value, (v) => _then(v as WatchForDataConnectivity));

  @override
  WatchForDataConnectivity get _value =>
      super._value as WatchForDataConnectivity;
}

class _$WatchForDataConnectivity implements WatchForDataConnectivity {
  const _$WatchForDataConnectivity();

  @override
  String toString() {
    return 'ConnectivityEvent.watchForDataConnectivity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchForDataConnectivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result errorOnNetworkConnection(),
    @required Result watchForDataConnectivity(),
    @required Result connectionStatusRecived(DataConnectionStatus status),
    @required Result checkDataConnectivity(),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return watchForDataConnectivity();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result errorOnNetworkConnection(),
    Result watchForDataConnectivity(),
    Result connectionStatusRecived(DataConnectionStatus status),
    Result checkDataConnectivity(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchForDataConnectivity != null) {
      return watchForDataConnectivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    @required Result watchForDataConnectivity(WatchForDataConnectivity value),
    @required Result connectionStatusRecived(ConnectionStatusRecived value),
    @required Result checkDataConnectivity(CheckDataConnectivity value),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return watchForDataConnectivity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    Result watchForDataConnectivity(WatchForDataConnectivity value),
    Result connectionStatusRecived(ConnectionStatusRecived value),
    Result checkDataConnectivity(CheckDataConnectivity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchForDataConnectivity != null) {
      return watchForDataConnectivity(this);
    }
    return orElse();
  }
}

abstract class WatchForDataConnectivity implements ConnectivityEvent {
  const factory WatchForDataConnectivity() = _$WatchForDataConnectivity;
}

abstract class $ConnectionStatusRecivedCopyWith<$Res> {
  factory $ConnectionStatusRecivedCopyWith(ConnectionStatusRecived value,
          $Res Function(ConnectionStatusRecived) then) =
      _$ConnectionStatusRecivedCopyWithImpl<$Res>;
  $Res call({DataConnectionStatus status});
}

class _$ConnectionStatusRecivedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectionStatusRecivedCopyWith<$Res> {
  _$ConnectionStatusRecivedCopyWithImpl(ConnectionStatusRecived _value,
      $Res Function(ConnectionStatusRecived) _then)
      : super(_value, (v) => _then(v as ConnectionStatusRecived));

  @override
  ConnectionStatusRecived get _value => super._value as ConnectionStatusRecived;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(ConnectionStatusRecived(
      status == freezed ? _value.status : status as DataConnectionStatus,
    ));
  }
}

class _$ConnectionStatusRecived implements ConnectionStatusRecived {
  const _$ConnectionStatusRecived(this.status) : assert(status != null);

  @override
  final DataConnectionStatus status;

  @override
  String toString() {
    return 'ConnectivityEvent.connectionStatusRecived(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectionStatusRecived &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  $ConnectionStatusRecivedCopyWith<ConnectionStatusRecived> get copyWith =>
      _$ConnectionStatusRecivedCopyWithImpl<ConnectionStatusRecived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result errorOnNetworkConnection(),
    @required Result watchForDataConnectivity(),
    @required Result connectionStatusRecived(DataConnectionStatus status),
    @required Result checkDataConnectivity(),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return connectionStatusRecived(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result errorOnNetworkConnection(),
    Result watchForDataConnectivity(),
    Result connectionStatusRecived(DataConnectionStatus status),
    Result checkDataConnectivity(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionStatusRecived != null) {
      return connectionStatusRecived(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    @required Result watchForDataConnectivity(WatchForDataConnectivity value),
    @required Result connectionStatusRecived(ConnectionStatusRecived value),
    @required Result checkDataConnectivity(CheckDataConnectivity value),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return connectionStatusRecived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    Result watchForDataConnectivity(WatchForDataConnectivity value),
    Result connectionStatusRecived(ConnectionStatusRecived value),
    Result checkDataConnectivity(CheckDataConnectivity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connectionStatusRecived != null) {
      return connectionStatusRecived(this);
    }
    return orElse();
  }
}

abstract class ConnectionStatusRecived implements ConnectivityEvent {
  const factory ConnectionStatusRecived(DataConnectionStatus status) =
      _$ConnectionStatusRecived;

  DataConnectionStatus get status;
  $ConnectionStatusRecivedCopyWith<ConnectionStatusRecived> get copyWith;
}

abstract class $CheckDataConnectivityCopyWith<$Res> {
  factory $CheckDataConnectivityCopyWith(CheckDataConnectivity value,
          $Res Function(CheckDataConnectivity) then) =
      _$CheckDataConnectivityCopyWithImpl<$Res>;
}

class _$CheckDataConnectivityCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements $CheckDataConnectivityCopyWith<$Res> {
  _$CheckDataConnectivityCopyWithImpl(
      CheckDataConnectivity _value, $Res Function(CheckDataConnectivity) _then)
      : super(_value, (v) => _then(v as CheckDataConnectivity));

  @override
  CheckDataConnectivity get _value => super._value as CheckDataConnectivity;
}

class _$CheckDataConnectivity implements CheckDataConnectivity {
  const _$CheckDataConnectivity();

  @override
  String toString() {
    return 'ConnectivityEvent.checkDataConnectivity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckDataConnectivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result errorOnNetworkConnection(),
    @required Result watchForDataConnectivity(),
    @required Result connectionStatusRecived(DataConnectionStatus status),
    @required Result checkDataConnectivity(),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return checkDataConnectivity();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result errorOnNetworkConnection(),
    Result watchForDataConnectivity(),
    Result connectionStatusRecived(DataConnectionStatus status),
    Result checkDataConnectivity(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkDataConnectivity != null) {
      return checkDataConnectivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    @required Result watchForDataConnectivity(WatchForDataConnectivity value),
    @required Result connectionStatusRecived(ConnectionStatusRecived value),
    @required Result checkDataConnectivity(CheckDataConnectivity value),
  }) {
    assert(errorOnNetworkConnection != null);
    assert(watchForDataConnectivity != null);
    assert(connectionStatusRecived != null);
    assert(checkDataConnectivity != null);
    return checkDataConnectivity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result errorOnNetworkConnection(ErrorOnNetworkConnection value),
    Result watchForDataConnectivity(WatchForDataConnectivity value),
    Result connectionStatusRecived(ConnectionStatusRecived value),
    Result checkDataConnectivity(CheckDataConnectivity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkDataConnectivity != null) {
      return checkDataConnectivity(this);
    }
    return orElse();
  }
}

abstract class CheckDataConnectivity implements ConnectivityEvent {
  const factory CheckDataConnectivity() = _$CheckDataConnectivity;
}

class _$ConnectivityStateTearOff {
  const _$ConnectivityStateTearOff();

// ignore: unused_element
  _ConnectivityState call(
      {@required Option<Either<String, String>> dataConnectionStatus}) {
    return _ConnectivityState(
      dataConnectionStatus: dataConnectionStatus,
    );
  }
}

// ignore: unused_element
const $ConnectivityState = _$ConnectivityStateTearOff();

mixin _$ConnectivityState {
  Option<Either<String, String>> get dataConnectionStatus;

  $ConnectivityStateCopyWith<ConnectivityState> get copyWith;
}

abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res>;
  $Res call({Option<Either<String, String>> dataConnectionStatus});
}

class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  final ConnectivityState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityState) _then;

  @override
  $Res call({
    Object dataConnectionStatus = freezed,
  }) {
    return _then(_value.copyWith(
      dataConnectionStatus: dataConnectionStatus == freezed
          ? _value.dataConnectionStatus
          : dataConnectionStatus as Option<Either<String, String>>,
    ));
  }
}

abstract class _$ConnectivityStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$ConnectivityStateCopyWith(
          _ConnectivityState value, $Res Function(_ConnectivityState) then) =
      __$ConnectivityStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Either<String, String>> dataConnectionStatus});
}

class __$ConnectivityStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$ConnectivityStateCopyWith<$Res> {
  __$ConnectivityStateCopyWithImpl(
      _ConnectivityState _value, $Res Function(_ConnectivityState) _then)
      : super(_value, (v) => _then(v as _ConnectivityState));

  @override
  _ConnectivityState get _value => super._value as _ConnectivityState;

  @override
  $Res call({
    Object dataConnectionStatus = freezed,
  }) {
    return _then(_ConnectivityState(
      dataConnectionStatus: dataConnectionStatus == freezed
          ? _value.dataConnectionStatus
          : dataConnectionStatus as Option<Either<String, String>>,
    ));
  }
}

class _$_ConnectivityState implements _ConnectivityState {
  const _$_ConnectivityState({@required this.dataConnectionStatus})
      : assert(dataConnectionStatus != null);

  @override
  final Option<Either<String, String>> dataConnectionStatus;

  @override
  String toString() {
    return 'ConnectivityState(dataConnectionStatus: $dataConnectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectivityState &&
            (identical(other.dataConnectionStatus, dataConnectionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.dataConnectionStatus, dataConnectionStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dataConnectionStatus);

  @override
  _$ConnectivityStateCopyWith<_ConnectivityState> get copyWith =>
      __$ConnectivityStateCopyWithImpl<_ConnectivityState>(this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState(
          {@required Option<Either<String, String>> dataConnectionStatus}) =
      _$_ConnectivityState;

  @override
  Option<Either<String, String>> get dataConnectionStatus;
  @override
  _$ConnectivityStateCopyWith<_ConnectivityState> get copyWith;
}
