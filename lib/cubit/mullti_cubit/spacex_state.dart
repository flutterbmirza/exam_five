import 'package:exam_five/data/models/spacex_model.dart';

abstract class SpaceXState {}

class SpaceXStateInitial extends SpaceXState {}

class FetchingDataInProgress extends SpaceXState {}

class FetchingDataFailure extends SpaceXState {
  FetchingDataFailure({required this.error});

  String error;
}

class FetchingDataSuccess extends SpaceXState {
  FetchingDataSuccess({required this.news});

  SpacexModel news;
}
