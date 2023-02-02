import 'package:exam_five/data/models/my_response.dart';
import 'package:exam_five/data/network/api_service.dart';
import 'package:exam_five/data/repositories/spacex_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'spacex_state.dart';

class SpaceXMultiCubit extends Cubit<SpaceXState> {
  SpaceXMultiCubit({required this.spaceXRepository}) : super(SpaceXStateInitial()) {
    _fetchNewsInfo();
  }
  SpaceXRepository spaceXRepository;

  _fetchNewsInfo() async {
    emit(FetchingDataInProgress());
    MyResponse myResponse = await spaceXRepository.getSpaceData();
    if (myResponse.error.isEmpty) {
      emit(FetchingDataSuccess(news: myResponse.data));
    } else {
      emit(FetchingDataFailure(error: myResponse.error));
    }
  }
}