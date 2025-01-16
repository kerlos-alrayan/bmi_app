import 'package:dio/dio.dart';

class Api {
  Future<Response> get({required String uri}) async {
    Response response = await Dio().get(uri);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'There is a problem in states code ${response.statusCode}');
    }
  }
}