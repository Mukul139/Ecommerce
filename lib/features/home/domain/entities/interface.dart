
import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/features/home/data/repositories/failure.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart';
import 'package:flutter/foundation.dart';
abstract class HomePageInterface {
     Future<Either<HomePageFailure,List<Item>>> loadData(
  {bool refresh=false}
  );
   Future<Either<HomePageFailure,List<Item>>> search(
  { @required  String searchKey}
  );
}