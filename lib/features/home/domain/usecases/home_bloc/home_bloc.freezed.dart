// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {@required List<Item> itemsDetail,
      @required bool loading,
      @required List<Item> previousItemsDetail,
      @required Option<HomePageFailure> failure}) {
    return _HomeState(
      itemsDetail: itemsDetail,
      loading: loading,
      previousItemsDetail: previousItemsDetail,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  List<Item> get itemsDetail;
  bool get loading;
  List<Item> get previousItemsDetail;
  Option<HomePageFailure> get failure;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Item> itemsDetail,
      bool loading,
      List<Item> previousItemsDetail,
      Option<HomePageFailure> failure});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object itemsDetail = freezed,
    Object loading = freezed,
    Object previousItemsDetail = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      itemsDetail: itemsDetail == freezed
          ? _value.itemsDetail
          : itemsDetail as List<Item>,
      loading: loading == freezed ? _value.loading : loading as bool,
      previousItemsDetail: previousItemsDetail == freezed
          ? _value.previousItemsDetail
          : previousItemsDetail as List<Item>,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<HomePageFailure>,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Item> itemsDetail,
      bool loading,
      List<Item> previousItemsDetail,
      Option<HomePageFailure> failure});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object itemsDetail = freezed,
    Object loading = freezed,
    Object previousItemsDetail = freezed,
    Object failure = freezed,
  }) {
    return _then(_HomeState(
      itemsDetail: itemsDetail == freezed
          ? _value.itemsDetail
          : itemsDetail as List<Item>,
      loading: loading == freezed ? _value.loading : loading as bool,
      previousItemsDetail: previousItemsDetail == freezed
          ? _value.previousItemsDetail
          : previousItemsDetail as List<Item>,
      failure: failure == freezed
          ? _value.failure
          : failure as Option<HomePageFailure>,
    ));
  }
}

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {@required this.itemsDetail,
      @required this.loading,
      @required this.previousItemsDetail,
      @required this.failure})
      : assert(itemsDetail != null),
        assert(loading != null),
        assert(previousItemsDetail != null),
        assert(failure != null);

  @override
  final List<Item> itemsDetail;
  @override
  final bool loading;
  @override
  final List<Item> previousItemsDetail;
  @override
  final Option<HomePageFailure> failure;

  @override
  String toString() {
    return 'HomeState(itemsDetail: $itemsDetail, loading: $loading, previousItemsDetail: $previousItemsDetail, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.itemsDetail, itemsDetail) ||
                const DeepCollectionEquality()
                    .equals(other.itemsDetail, itemsDetail)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.previousItemsDetail, previousItemsDetail) ||
                const DeepCollectionEquality()
                    .equals(other.previousItemsDetail, previousItemsDetail)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemsDetail) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(previousItemsDetail) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {@required List<Item> itemsDetail,
      @required bool loading,
      @required List<Item> previousItemsDetail,
      @required Option<HomePageFailure> failure}) = _$_HomeState;

  @override
  List<Item> get itemsDetail;
  @override
  bool get loading;
  @override
  List<Item> get previousItemsDetail;
  @override
  Option<HomePageFailure> get failure;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  Load load() {
    return const Load();
  }

// ignore: unused_element
  Refresh refresh() {
    return const Refresh();
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result refresh(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result refresh(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(Load value),
    @required Result refresh(Refresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(Load value),
    Result refresh(Refresh value),
    @required Result orElse(),
  });
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class $LoadCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
}

class _$LoadCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;
}

class _$Load implements Load {
  const _$Load();

  @override
  String toString() {
    return 'HomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result refresh(),
  }) {
    assert(load != null);
    assert(refresh != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(Load value),
    @required Result refresh(Refresh value),
  }) {
    assert(load != null);
    assert(refresh != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(Load value),
    Result refresh(Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements HomeEvent {
  const factory Load() = _$Load;
}

abstract class $RefreshCopyWith<$Res> {
  factory $RefreshCopyWith(Refresh value, $Res Function(Refresh) then) =
      _$RefreshCopyWithImpl<$Res>;
}

class _$RefreshCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $RefreshCopyWith<$Res> {
  _$RefreshCopyWithImpl(Refresh _value, $Res Function(Refresh) _then)
      : super(_value, (v) => _then(v as Refresh));

  @override
  Refresh get _value => super._value as Refresh;
}

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'HomeEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result refresh(),
  }) {
    assert(load != null);
    assert(refresh != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(Load value),
    @required Result refresh(Refresh value),
  }) {
    assert(load != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(Load value),
    Result refresh(Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements HomeEvent {
  const factory Refresh() = _$Refresh;
}
