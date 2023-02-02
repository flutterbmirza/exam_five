import 'package:exam_five/cubit/mullti_cubit/spacex_cubit.dart';
import 'package:exam_five/cubit/mullti_cubit/spacex_state.dart';
import 'package:exam_five/data/network/api_service.dart';
import 'package:exam_five/data/repositories/spacex_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SpaceXMultiCubit(
            spaceXRepository: SpaceXRepository(apiService: ApiService())),
        child: BlocBuilder<SpaceXMultiCubit, SpaceXState>(
          builder: (context, state) {
            if (state is FetchingDataInProgress) {
              return const Center(child: CircularProgressIndicator());
            }
            else if(state is FetchingDataSuccess){
              return Center(
                child: Text(state.news.name),
              );
            }
            else if(state is FetchingDataFailure) {
              return Center(child: Text(state.error));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
