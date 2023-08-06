import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../injections/injections.dart';
import '../../utils/setup/app_setup.dart';
import '../network/dio_handler.dart';

class RegisterCoreModule {
  RegisterCoreModule() {
    _core();
  }

  Future<void> _core() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    sl.registerLazySingleton<Dio>(() => sl<DioHandler>().dio);
    sl.registerLazySingleton<DioHandler>(() => DioHandler(
          sharedPreferences: sl(),
          apiBaseUrl: Config.baseUrl,
        ));
  }
}
