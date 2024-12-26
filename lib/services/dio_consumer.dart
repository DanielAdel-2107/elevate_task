import 'package:dio/dio.dart';
import 'package:elevate_task/services/api_consumer.dart';
import 'package:elevate_task/services/api_interceptors.dart';
import 'package:elevate_task/services/end_points.dart';
import 'package:elevate_task/utils/errors/server_exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      error: true,
      request: true,
    ));
    dio.interceptors.add(ApiInterceptors());
  }
  @override
  Future get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        data:
            isFormData ? FormData.fromMap(data as Map<String, dynamic>) : data,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        queryParameters: queryParameters,
        data:
            isFormData ? FormData.fromMap(data as Map<String, dynamic>) : data,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        queryParameters: queryParameters,
        data:
            isFormData ? FormData.fromMap(data as Map<String, dynamic>) : data,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        queryParameters: queryParameters,
        data:
            isFormData ? FormData.fromMap(data as Map<String, dynamic>) : data,
      );
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }
}
