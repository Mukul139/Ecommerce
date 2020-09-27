part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  
   const factory HomeState({
    @required List<Item> itemsDetail,
    @required bool loading,
    @required List<Item> previousItemsDetail,
   @required Option<HomePageFailure>  failure,
  }) = _HomeState;

  factory HomeState.initial() =>  HomeState(
        itemsDetail: [] ,
        loading: true,
        previousItemsDetail:[],
        failure:none()
      );


}