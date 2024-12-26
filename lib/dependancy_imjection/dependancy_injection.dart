import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:elevate_task/services/dio_consumer.dart';
import 'package:elevate_task/view_models/product_provider.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
  serviceLocator.registerLazySingleton<DioConsumer>(
    () => DioConsumer(dio: serviceLocator<Dio>()),
  );

  serviceLocator.registerFactory<ProductProvider>(
    () => ProductProvider(dioConsumer: serviceLocator<DioConsumer>()),
  );
}
