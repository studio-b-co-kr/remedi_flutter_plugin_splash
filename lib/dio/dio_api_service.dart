import 'package:dio/dio.dart';
import 'package:remedi_flutter_base_app/data/i_dto.dart';

import '../remedi_flutter_base_app.dart';
import 'dio_api_factory.dart';

abstract class DioApiService {
  final DioApiFactory factory;

  DioApiService({this.factory});

  Future<dynamic> requestGet(String path,
      {Map<String, dynamic> query, FromJsonMap fromJsonMap}) async {
    Dio http = factory.build();
    var response;
    try {
      response = await http.get(path, queryParameters: query);
      return handleResponse(response, fromJsonMap);
    } catch (error) {
      return error.error;
    }
  }

  Future<dynamic> requestPost(String path,
      {IDto data, FromJsonMap fromJsonMap}) async {
    Dio http = factory.build();
    var response;
    try {
      response = await http.post(path, data: data?.toJsonString());
      return handleResponse(response, fromJsonMap);
    } catch (error) {
      return error.error;
    }
  }

  Future<dynamic> requestUpload(String path,
      {FormData formData, FromJsonMap fromJsonMap}) async {
    Dio http = factory.build();
    var response;
    try {
      response = await http.patch(path, data: formData);
      return handleResponse(response, fromJsonMap);
    } catch (error) {
      return error.error;
    }
  }

  Future<dynamic> requestPatch(String path,
      {IDto data, FromJsonMap fromJsonMap}) async {
    Dio http = factory.build();
    var response;
    try {
      response = await http.patch(path, data: data?.toJsonString());
      return handleResponse(response, fromJsonMap);
    } catch (error) {
      return error.error;
    }
  }

  Future<dynamic> requestDelete(String path,
      {IDto data, FromJsonMap fromJsonMap}) async {
    Dio http = factory.build();
    var response;
    try {
      response = await http.delete(path, data: data?.toJsonString());
      return handleResponse(response, fromJsonMap);
    } catch (error) {
      return error.error;
    }
  }

  dynamic handleResponse(var response, FromJsonMap fromJsonMap) {
    if (response is DioError) {
      return Response(
          data: AppError(
              code: "${response.response.statusCode}",
              message: response.response.statusMessage));
    }
    if (response is Response) {
      return fromJsonMap(response.statusCode,
          response.statusCode == 204 ? null : response.data);
    }
  }
}
