


import '../../model/home_model/HomeModel.dart';
import 'home_api_fetch.dart';

class HomeApiRepository {
  final _homeProvider = HomeApiProvider();

  Future<HomeModel> fetchHomeModel() {
    return _homeProvider.fetchHomeModel();
  }
}

class HomeNetworkError extends Error {}
