import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:qtec/home/model/home_model/HomeModel.dart';



class HomeApiProvider {
  final Dio _dio = Dio();
  final String _homeUrl = 'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice';

  Future<HomeModel> fetchHomeModel() async {
    try {
      Response response = await _dio.get(_homeUrl);
      print(response.data);
      return HomeModel.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print("Exception occured: $error stackTrace: $stacktrace");
      }
      return HomeModel.withError("Data not found / Connection issue");
    }
  }


}
