import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/DetailsModel.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<DetailsModel> fetchDetailsList(String? slg) async {
    final String _url = 'https://panel.supplyline.network/api/product-details/${slg}';
    try {
      Response response = await _dio.get(_url);
      return DetailsModel.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print("Exception occured: $error stackTrace: $stacktrace");
      }
      return DetailsModel.withError("Data not found / Connection issue");
    }
  }
}
