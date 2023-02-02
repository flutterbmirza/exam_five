import 'package:exam_five/cubit/connectivity/connectivity_cubit.dart';
import 'package:exam_five/cubit/single_cubit/spacex_cubit.dart';
import 'package:exam_five/data/network/api_service.dart';
import 'package:exam_five/data/repositories/spacex_repository.dart';
import 'package:exam_five/ui/second_task/second_task.dart';
import 'package:exam_five/ui/tab/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SingleStateCubit(spacexRepository: SpaceXRepository(apiService: ApiService())),),
          BlocProvider(create: (context) => ConnectivityCubit()),
        ],
        child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabBox(),
    );
  }
}