import 'package:exam_five/data/network/api_service.dart';
import '../models/my_response.dart';


class SpaceXRepository {
  SpaceXRepository({required this.apiService});
  ApiService apiService;
  Future<MyResponse> getSpaceData() => apiService.getNews();
}