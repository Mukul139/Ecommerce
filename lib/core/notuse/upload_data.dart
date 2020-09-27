import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/home/data/datasources/firestore.dart';
import '../../injection/injection.dart';
import '../current_user.dart';

Future<void> uploadSampleData({FirebaseFirestore firestore}) async {
  final firestore = getIt<FirebaseFirestore>();
  final user = await getIt<CurrentUser>().getUser();
  final _random = Random();

  final itemType = [
    'pant',
    'shirt',
    'tshirt',
    'trouser',
    'shoes',
    'socks',
    'jeans',
    'top',
    'sweat shirt',
    'jogger'
  ];
  final price = _random.nextInt(100000);
  final item = itemType[_random.nextInt(itemType.length)];
  return firestore.itemCollection.add({
    'vandorName': user.name.getOrCrashOriginal().substring(0, 1).toUpperCase() +
        user.name.getOrCrashOriginal().substring(1).toLowerCase(),
    'price': price,
    'itemType':
        item.substring(0, 1).toUpperCase() + item.substring(1).toLowerCase(),
    'createdAt': FieldValue.serverTimestamp(),
    'stringPrice':price.toString()
    // 'searchKey': [
    //  user.name.getOrCrashOriginal().substring(0, 1).toUpperCase() +
    //     user.name.getOrCrashOriginal().substring(1).toLowerCase(),
    //   price.toString(),
    //    item.substring(0, 1).toUpperCase() + item.substring(1).toLowerCase(),
    // ]
  });
}
