import 'package:dio/dio.dart';
import 'package:exam_five/data/models/my_response.dart';
import 'package:exam_five/data/models/spacex_model.dart';
import 'package:exam_five/data/network/api_client.dart';


class ApiService extends ApiClient {
  Future<MyResponse> getNews() async {
    MyResponse myResponse=MyResponse(error: "");
    try {
      Response response =
      await dio.get("https://api.spacexdata.com/v5/launches/latest");
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = SpacexModel.fromJson(response.data);
      }
    } catch (e) {
      myResponse.error = e.toString();
      print(e.toString());
    }
    return myResponse;
  }
}