part of 'details-bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object?> get props => [];
}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsLoaded extends DetailsState {
  final DetailsModel detailsModel;
  const DetailsLoaded(this.detailsModel);
}

class DetailsError extends DetailsState {
  final String? message;
  const DetailsError(this.message);
}
