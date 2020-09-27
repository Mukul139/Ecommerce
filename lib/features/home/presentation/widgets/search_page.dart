import 'package:ecommerceTest/core/current_user.dart';
import 'package:ecommerceTest/features/home/domain/entities/interface.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart'
    as item;
import 'package:ecommerceTest/injection/injection.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:easy_search/easy_search.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'home_screen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Future<void> dispose() async {
    razorpay.clear();
    super.dispose();
  }

  Razorpay razorpay;

  void _handlerPaymentSuccess(PaymentSuccessResponse response) {
    print(response.orderId);
    FlushbarHelper.createSuccess(
            message: 'Payment Successfull your OrderId: ${response.orderId}')
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
  }

  Future<void> openCheckout(item.Item item) async {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xffB24592), Color(0xffF15F79)])),
      child: EasySearch(
        // filterPageSettings: const FilterPageSettings(showBackButton: true),
        onSearch: (text) async {
          print('Filter Query: $text');
          final result =
              await getIt<HomePageInterface>().search(searchKey: text);

          return result.fold((l) {
            FlushbarHelper.createError(message: 'Server error');
            return [item.Item.empty()];
          }, (r) => r);
        },
        searchResultSettings: const SearchResultSettings(
          padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
        ),
        customItemBuilder: (context, item.Item item, isSelected) {
          return item.failureOption.isSome()
              ? Container()
              : _buildDataListItem(item);
        },
      ),
    );
  }

  Widget _buildDataListItem(item.Item item) {
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
}
