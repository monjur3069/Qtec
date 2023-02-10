part of 'details-bloc.dart';

abstract class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object> get props => [];
}

class GetDetailsList extends DetailsEvent {}
