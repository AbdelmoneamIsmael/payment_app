import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  Future<Response> post(
      {required String url,
      required data,
      required String token,
      String? contentType}) async {
    var response = await dio.post(
      url,
      data: data,
      options: Options(
        contentType: contentType,
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
    return response;
  }
}
