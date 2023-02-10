import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/DetailsModel.dart';
import '../resources/api-repository.dart';
part 'details-event.dart';
part 'details-state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(String? slg) : super(DetailsInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetDetailsList>((event, emit) async {
      try {
        emit(DetailsLoading());
        final mList = await _apiRepository.fetchDetailsList(slg);
        emit(DetailsLoaded(mList));
        if (mList.err != null) {
          emit(DetailsError(mList.err));
        }
      } on NetworkError {
        emit(const DetailsError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
