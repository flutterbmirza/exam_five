import 'package:exam_five/data/network/api_service.dart';
import 'package:get_it/get_it.dart';

final myLocale = GetIt.instance;

void setUp() {
  myLocale.registerLazySingleton(() => ApiService());
}