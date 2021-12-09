import 'package:dio/dio.dart';

class ApiService {
  ApiService();

  final dio = Dio();

  // Options
  void setOptions(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  Future<Response> fetchCurrentWeather(String city) async {
    var headers = {
      'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
      'x-rapidapi-key': '4ce8c5e763msh49e1bf31ddd08efp1fd1afjsn4fffac5450a3'
    };
    var response = await dio.get('/weather',
        queryParameters: {'q': city, 'units': 'metric'}, options: Options(headers: headers));

    return response;
  }
}
