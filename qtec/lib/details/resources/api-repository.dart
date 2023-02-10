
import '../model/DetailsModel.dart';
import 'api-provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<DetailsModel> fetchDetailsList(String? slg) {
    return _provider.fetchDetailsList(slg);
  }
}

class NetworkError extends Error {}
