import 'package:bloc/bloc.dart';
import 'package:exam_five/data/models/my_response.dart';
import 'package:exam_five/data/repositories/spacex_repository.dart';
import 'spacex_state.dart';


class SingleStateCubit extends Cubit<CubitSingleState> {
  SingleStateCubit({required this.spacexRepository}) : super(CubitSingleState()){getData();}

  final SpaceXRepository spacexRepository;
  getData() async {
    emit(CubitSingleState(status: Status.LOADING));
    MyResponse myResponse = await spacexRepository.getSpaceData();

    if(myResponse.error==""){
      emit(CubitSingleState(status: Status.SUCCESS));
      emit(state.copyWith(news: myResponse.data,status: Status.SUCCESS));
    }else{
      emit(CubitSingleState(status: Status.ERROR));
      emit(state.copyWith(error: myResponse.error,status: Status.ERROR));
    }
  }
}
