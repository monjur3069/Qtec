import 'package:bloc/bloc.dart';

import '../db_helper/home_api/home_api_repository.dart';

import 'home_event.dart';
import 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    final HomeApiRepository _apiRepository = HomeApiRepository();

    on<GetHomeDataList>((event, emit) async {
      try {
        emit(HomeLoading());
        final npList = await _apiRepository.fetchHomeModel();
        emit(HomeLoaded(npList));
        if (npList.error != null) {
          emit(HomeError(npList.error));
        }
      } on HomeNetworkError {
        emit(const HomeError("Failed to fetch data. is your device online?"));
      }
    });

  }
}