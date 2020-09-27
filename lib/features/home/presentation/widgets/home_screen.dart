import 'package:ecommerceTest/core/current_user.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../core/connectivity/connectivity_bloc/connectivity_bloc.dart';
import '../../../../core/notuse/upload_data.dart';
import '../../domain/repositories/item.dart';
import '../../domain/usecases/home_bloc/home_bloc.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  HomeState itemState;

  ScrollController _scrollController;

  @override
  Future<void> dispose() async {
    _scrollController.dispose();
    razorpay.clear();
    super.dispose();
  }

  Razorpay razorpay;

  void _handlerPaymentSuccess(PaymentSuccessResponse response) {
    print(response.orderId);
    FlushbarHelper.createSuccess(
            message:
                'Payment Successfull your paymentId: ${response.paymentId}')
        .show(context);
  }

  void _handlerErrorFailure(PaymentFailureResponse response) {
    print(response.code);
    FlushbarHelper.createError(message: '${response.message}').show(context);
  }

  @override
  void initState() {
    super.initState();

    razorpay = Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlerErrorFailure);

    _scrollController = ScrollController();
  }

  Future<void> openCheckout(Item item) async {
    final userData = await getIt<CurrentUser>().getUser();

    final options = {
      "key": "rzp_test_DD9oXxVgpHxVIa",
      "amount": item.price.getOrCrashOriginal() * 100,
      "name": "Ecommerce Test",
      "description": "Payment for the ${item.clotheType.getOrCrashOriginal()}",
      "prefill": {
        "contact": userData.phoneNumber.getOrElse(""),
        "email": userData.emailAddress.getOrElse("")
      },
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
      FlushbarHelper.createError(message: 'Server error');
    }
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter <= 1000) {
      _scaffoldKey.currentContext.bloc<HomeBloc>().add(const HomeEvent.load());
    }

    return false;
  }

  // int calculateListItemCount(HomeState itemState) {
  //   if (!itemState.loading) {
  //     return itemState.itemsDetail.length;
  //   } else {
  //     return itemState.itemsDetail.length + 1;
  //   }
  // }

  // Widget _buildLoaderListItem() {
  //   return const Center(
  //     child: CircularProgressIndicator(),
  //   );
  // }

  Widget _buildDataListItem(Item item) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(const Size.fromHeight(200)),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(colors: [
                Color(0xff2980b9),
                Color(0xff2c3e50),
              ])),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item.vandorName.getOrCrash(),
                      style: const TextStyle(fontSize: 18),
                    )),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(item.clotheType.getOrCrash(),
                      style: const TextStyle(fontSize: 15)),
                  Text(item.price.getOrCrash(),
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  print(item);
                  openCheckout(item);
                },
                child: const Text('Buy Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool show = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.failure.fold(
            () => () {},
            (a) => a.map(
                  unexpected: (_) => FlushbarHelper.createError(
                          message: 'Something went wrong')
                      .show(context),
                  insufficientPermissions: (_) =>
                      FlushbarHelper.createError(message: 'Permission denied')
                          .show(context),
                ));
      },
      builder: (context, itemState) {
        return Scaffold(
          key: _scaffoldKey,
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffB24592), Color(0xffF15F79)])),
            child: RefreshIndicator(
              onRefresh: () async {
                _scaffoldKey.currentContext
                    .bloc<ConnectivityBloc>()
                    .add(const ConnectivityEvent.checkDataConnectivity());
                _scaffoldKey.currentContext
                    .bloc<HomeBloc>()
                    .add(const HomeEvent.refresh());
              },
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: NotificationListener<ScrollNotification>(
                    onNotification: _handleScrollNotification,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: _scrollController,
                      child: ImplicitlyAnimatedList<Item>(
                        insertDuration: const Duration(
                            seconds:
                                //  itemState.itemsDetail.length >=
                                //         itemState.previousItemsDetail.length
                                //     ? 0
                                //     :
                                1),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        items: itemState.itemsDetail,
                        areItemsTheSame: (a, b) => a.itemId == b.itemId,
                        itemBuilder: (context, animation, item, index) {
                          animation.addStatusListener((status) {
                            show = true;
                          });
                          if (index == itemState.itemsDetail.length) {
                            show = false;
                          }
                          print(index);
                          return Container(
                            width: 300,
                            child: SizeFadeTransition(
                                sizeFraction: .73,
                                curve: Curves.easeInOut,
                                animation: animation,
                                child: index >= itemState.itemsDetail.length
                                    ? Container()
                                    : ( _buildDataListItem(
                                            itemState.itemsDetail[index],
                                          )
                                      )),
                          );
                        },
                      )

                      //     ListView.builder(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   itemCount: calculateListItemCount(itemState),
                      //   itemBuilder: (context, index) {
                      //     return index >= itemState.itemsDetail.length
                      //         ? _buildLoaderListItem()
                      //         : _buildDataListItem(
                      ,
                    ) //             itemState.itemsDetail[index],
                    //           );
                    //   },
                    // ),
                    ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () => uploadSampleData(),
              label: const Text('Upload test Data')),
        );
      },
    );
  }
}
