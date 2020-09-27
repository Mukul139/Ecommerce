import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/core/timestamp_converter.dart';
import 'package:ecommerceTest/features/home/data/models/item_dto.dart';
import 'package:ecommerceTest/features/home/data/repositories/failure.dart';
import 'package:ecommerceTest/features/home/domain/entities/interface.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends HydratedBloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo) : super(HomeState.initial());
  final HomePageInterface _homeRepo;
  static const keyForItemIdInCatch = 'itemId';
  static const hydratedStorageKey = 'itemsHydratedStorage';

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(load: (e) async* {
      yield state.copyWith(loading: true, failure: none());
      final result = await _homeRepo.loadData();

      yield* result.fold((l) async* {
        yield state.copyWith(
          failure: some(l),
          loading: false,
        );
      }, (r) async* {
        yield state.copyWith(
          failure: none(),
          loading: false,
          itemsDetail: state.itemsDetail + r,
          previousItemsDetail: state.itemsDetail,
        );
      });
    }, refresh: (e) async* {
      getIt<Logger>().i('refresh called');
      final result = await _homeRepo.loadData(refresh: true);

      yield* result.fold((l) async* {
        yield state.copyWith(
          failure: some(l),
          loading: false,
        );
      }, (r) async* {
        yield state.copyWith(
          failure: none(),
          loading: false,
          itemsDetail: r,
          previousItemsDetail: state.itemsDetail,
        );
      });
    },);
  }

  @override
  HomeState fromJson(Map<String, dynamic> json) {
    final data = json[hydratedStorageKey] as List;

    final favData = data.map((e) {
      final timestampConvertedData =
          TimestampConverterForStorage().toTimestamp(e);
      return Itemdto.fromCatch(
              doc: timestampConvertedData,
              itemId: timestampConvertedData[keyForItemIdInCatch].toString())
          .toDomain();
    }).toList();

    return HomeState(
        itemsDetail: favData,
        loading: false,
        previousItemsDetail: [],
        failure: none());
  }

  @override
  Map<String, dynamic> toJson(HomeState state) {
    if (state.itemsDetail.isNotEmpty) {
      final favJson = state.itemsDetail.map((e) {
        final jsonData = Itemdto.fromDomian(e).toJson();

        jsonData.addAll({keyForItemIdInCatch: e.itemId.getOrCrashOriginal()});

        final data = TimestampConverterForStorage().fromTimestamp(jsonData);
        return data;
      }).toList();

      return {hydratedStorageKey: favJson};
    }

    return {hydratedStorageKey: []};
  }
}
