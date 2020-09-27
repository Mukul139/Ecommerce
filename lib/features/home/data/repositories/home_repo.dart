import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceTest/core/current_user.dart';
import 'package:ecommerceTest/core/performance_craslytics/crashlytics.dart';
import 'package:ecommerceTest/core/timestamp_converter.dart';
import 'package:ecommerceTest/features/home/data/models/item_dto.dart';
import 'package:ecommerceTest/features/home/data/repositories/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/features/home/domain/entities/interface.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:ecommerceTest/utils/constant.dart';
import 'package:edit_distance/edit_distance.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import '../datasources/firestore.dart';

@LazySingleton(as: HomePageInterface)
class HomeRepo implements HomePageInterface {
  HomeRepo(this.currentUser, this._firestore);

  static const numberOfFetch = Constant.numberOfFetchDataPerCall;
  static const paginatedItemKey = Constant.itemPaginateKey;
  static const paginatedKeyword = 'createdAt';

  final CurrentUser currentUser; //TODO: user local database
  final paginateBox = Hive.box(Constant.paginateDetailBox);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<HomePageFailure, List<Item>>> loadData(
      {bool refresh = false}) async {
    try {
      var query = _firestore.itemCollection
          .orderBy(paginatedKeyword, descending: true)
          .limit(numberOfFetch);

      if (paginateBox.containsKey(paginatedItemKey) && refresh != true) {
        query = query.startAfter([
          TimestampConverterForStorage()
              .toTimestampOnly(paginateBox.get(paginatedItemKey))
        ]);
      }

      final itemQuery = await query.getDocuments();
      final List<Item> _data = [];
      for (final doc in itemQuery.docs) {
        try {
          final itemData = Itemdto.fromFirestore(doc).toDomain();

          if (itemData.failureOption.isNone()) {
            itemData.fromCatch.setCatch(doc.metadata.isFromCache);
            paginateBox.put(
                paginatedItemKey,
                TimestampConverterForStorage()
                    .fromTimestamp(doc.data()[paginatedKeyword]));

            _data.add(itemData);
          } else {
            getIt<CrashlyticsLogger>().logCrashlytics(
                error:
                    'item data crashed   doc ${doc.data()} docId: ${doc.id}');
          }
        } catch (_) {
          getIt<CrashlyticsLogger>().logCrashlytics(
              error: 'item data crashed   doc ${doc.data()} docId: ${doc.id}');
        }
      }

      return right(_data);
    } catch (e, s) {
      getIt<CrashlyticsLogger>().recordError(
          e: e, s: s, context: 'Problem Caused on home page repo in load data');
      return left(const HomePageFailure.unexpected());
    }
  }

  @override
  Future<Either<HomePageFailure, List<Item>>> search({String searchKey}) async {
    try {
      final List<Item> searchResult = [];
      final strSearch = searchKey.substring(0, 1).toUpperCase() +
          searchKey.substring(1).toLowerCase();
      final strlength = strSearch.length;
      final strFrontCode = strSearch.substring(0, strlength - 1);
      final strEndCode = strSearch.substring(strlength - 1, strSearch.length);

      final startcode = strSearch;
      final endcode =
          strFrontCode + String.fromCharCode(strEndCode.codeUnitAt(0) + 1);
      print(endcode);
      print(startcode);
      final vendorSearch = await _firestore.itemCollection
          .where("vandorName", isGreaterThanOrEqualTo: startcode)
          .where("vandorName", isLessThan: endcode)
          .limit(10)
          .getDocuments();

      print(vendorSearch.docs);
      final itemTypeSearch = await _firestore.itemCollection
          .where("itemType", isGreaterThanOrEqualTo: startcode)
          .where("itemType", isLessThan: endcode)
          .limit(10)
          .getDocuments();
      print(itemTypeSearch.docs);
     
      final priceSearch = await _firestore.itemCollection
          .where("stringPrice", isGreaterThanOrEqualTo: startcode)
          .where("stringPrice", isLessThan: endcode)
          .limit(10)
          .getDocuments();
      print(priceSearch.docs);
      final String s1 = strSearch;
      final Levenshtein d = Levenshtein();

      final List<Map<String, dynamic>> searchReasult = [];

      for (final item in vendorSearch.docs) {
        final itemdto = Itemdto.fromFirestore(item);
        final convertedInMap = itemdto.toJson();
        convertedInMap.addAll({'matching': d.distance(s1, itemdto.vandorName)});
         convertedInMap.addAll({'id': itemdto.id});
        searchReasult.add(convertedInMap);
      }

      for (final item in itemTypeSearch.docs) {
        final itemdto = Itemdto.fromFirestore(item);
        print("dto : $itemdto");
        final convertedInMap = itemdto.toJson();
        print("con : $convertedInMap");
        convertedInMap.addAll({'matching': d.distance(s1, itemdto.itemType)});
        convertedInMap.addAll({'id': itemdto.id});
        searchReasult.add(convertedInMap);
      }

      for (final item in priceSearch.docs) {
        final itemdto = Itemdto.fromFirestore(item);
        final convertedInMap = itemdto.toJson();
        convertedInMap
            .addAll({'matching': d.distance(s1, itemdto.price.toString())});
             convertedInMap.addAll({'id': itemdto.id});
        searchReasult.add(convertedInMap);
      }
 print("search result: $searchReasult");
      for (var i = 0; i < searchReasult.length - 1; i++) {
        for (var j = 0; j < searchReasult.length - i - 1; j++) {
          if (double.parse(searchReasult[j]['matching'].toString()) >
              double.parse(searchReasult[j + 1]['matching'].toString())) {
            final t = searchReasult[j];
            searchReasult[j] = searchReasult[j + 1];
            searchReasult[j + 1] = t;
          }
        }
      }
      print(searchReasult.length);
      for (final item in searchReasult) {
        print(item);
        try {
          print('start');
          final itemData = Itemdto.fromCatch(doc:item,itemId:item['id'].toString() ).toDomain();
          print("convert this data: $itemData");
          if (itemData.failureOption.isNone()) {
            searchResult.add(itemData);
          } else {
            getIt<CrashlyticsLogger>()
                .logCrashlytics(error: 'item data crashed   item $item');
          }
        } catch (_) {
          getIt<CrashlyticsLogger>()
              .logCrashlytics(error: 'item data crashed   item $item');
        }
      }
      print(searchResult);
      return right(searchResult);
    } catch (e, s) {
      getIt<CrashlyticsLogger>().recordError(
          e: e, s: s, context: 'Problem Caused on home page repo in search');
      return left(const HomePageFailure.unexpected());
    }
  }
}
