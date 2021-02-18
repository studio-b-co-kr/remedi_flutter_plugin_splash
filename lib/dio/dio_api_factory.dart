import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:remedi_flutter_base_app/app_config.dart';
import 'package:remedi_flutter_base_app/error/app_error.dart';

typedef FromJsonMap = void Function(int code, dynamic jsonMap);

class DioApiFactory {
  final String baseUrl;
  final String accessToken;

  DioApiFactory(this.baseUrl, {this.accessToken});

  Dio build() {
    Dio http = Dio();
    http.options.baseUrl = baseUrl;
    http.transformer = FlutterTransformer();
    http.options.connectTimeout = 15000;
    http.options.receiveTimeout = 15000;
    http.options.sendTimeout = 15000;

    http.interceptors.add(LogInterceptor(
        requestBody: AppConfig.enablePrintLog,
        responseBody: AppConfig.enablePrintLog,
        requestHeader: AppConfig.enablePrintLog,
        responseHeader: AppConfig.enablePrintLog));

    http.interceptors.add(InterceptorsWrapper(onRequest: (options) async {
      if (accessToken != null && accessToken.isNotEmpty) {
        options.headers["Authorization"] = "Bearer $accessToken";
      }
      options.headers['Accept'] = 'application/json';
      options.headers['User-Agent'] = AppConfig.platform;
      options.headers['App-Version'] = AppConfig.appVersion;
      return options;
    }, onResponse: (Response<dynamic> response) {
      return response;
    }, onError: (DioError error) {
      return AppError(
          code: "${error?.response?.statusCode}",
          message: error?.response?.statusMessage);
    }));

    final performanceInterceptor = DioFirebasePerformanceInterceptor();
    http.interceptors.add(performanceInterceptor);

    return http;
  }
}
