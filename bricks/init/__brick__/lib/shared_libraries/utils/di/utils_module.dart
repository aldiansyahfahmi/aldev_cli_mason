import '../navigation/navigation_helper.dart';
import '../navigation/router/auth_router.dart';

class RegisterUtilsModule {
  RegisterUtilsModule() {
    _navigations();
    _routers();
  }

  void _navigations() => sl.registerLazySingleton<NavigationHelper>(
        () => NavigationHelperImpl(),
      );

  void _routers() {
    sl.registerLazySingleton<HomeRouter>(
      () => HomeRouterImpl(
        navigationHelper: sl(),
      ),
    );
  }
}
