import 'package:cloud_firestore/cloud_firestore.dart';

class TimestampConverterForStorage {
  Map<String, dynamic> toTimestamp(dynamic data) {
    final Map<String, dynamic> convertedDataType = {};

    final _converted = _convertFromMap(data["original"], data["dublicate"]);
   
    _converted.forEach((key, value) {
      convertedDataType.addAll({key.toString(): value});
    });

    return convertedDataType;
  }
  Timestamp toTimestampOnly(dynamic data) {
    

    final _converted = _convertFromMap(data["original"], data["dublicate"]);
    

    return _converted as Timestamp;
  }

  dynamic _convertFromMap(dynamic data, dynamic data2) {
    final dataType = data.runtimeType.toString().toLowerCase();
    if (dataType.contains('array') || dataType.contains('list')) {
      final List listData = data as List;
      final returnData = [];
      for (var i = 0; i < listData.length; i++) {
        returnData.add(_convertFromMap(listData[i], data2[i]));
      }
      return returnData;
    } else if (dataType.contains("map")) {
      final mapdata = data;
      final mapReturnData = {};
      mapdata.forEach((key, value) {
        final data = {key: _convertFromMap(value, data2[key])};
        mapReturnData.addAll(data);
      });
      return mapReturnData;
    } else if (data2 == 'timestampx') {
      final toTimestamp = Timestamp.fromMicrosecondsSinceEpoch(data as int);
      return toTimestamp;
    }
    return data;
  }

  Map<String, dynamic> fromTimestamp(dynamic data) {
   
    final dataType = data.runtimeType.toString().toLowerCase();
    if (dataType.contains('array') || dataType.contains('list')) {
     
      final returnData = [];
      final returnData2 = [];
      for (final listData in data) {
        final Map<String, dynamic> recievedData = fromTimestamp(listData);
        returnData.add(recievedData["original"]);
        returnData2.add(recievedData["dublicate"]);
      }
      return {"original": returnData, "dublicate": returnData2};
    } else if (dataType.contains("map")) {
      final mapdata = data as Map<String, dynamic>;
      final mapReturnData = {};
      final mapReturnData2 = {};
      mapdata.forEach((key, value) {
        final Map<String, dynamic> data = fromTimestamp(value);

        mapReturnData.addAll({key: data["original"]});
        mapReturnData2.addAll({key: data["dublicate"]});
      });
      return {"original": mapReturnData, "dublicate": mapReturnData2};
    } else if (dataType.contains("timestamp")) {
      final timestampToIntData = data.microsecondsSinceEpoch;
      return {"original": timestampToIntData, "dublicate": 'timestampx'};
    }
    return {"original": data, "dublicate": data};
  }
}
