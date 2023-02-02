import 'package:exam_five/cubit/single_cubit/spacex_cubit.dart';
import 'package:exam_five/cubit/single_cubit/spacex_state.dart';
import 'package:exam_five/ui/first_task/widgets/spacexwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<SingleStateCubit, CubitSingleState>(
          builder: (context, state) {
            if(state.status == Status.ERROR){
              return Text(state.error.toString());
            }else
            if (state.status == Status.SUCCESS){
              return SpaceXWidget(spaceX: state.news!);
            }else
            if (state.status == Status.LOADING){
              return CircularProgressIndicator();
            }
            return Container();
          },
        ),
      ),
    );
  }
}
