import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../presentation/{{name.snakeCase()}}/ui/{{name.snakeCase()}}_screen.dart';
import '../shared_libraries/utils/navigation/navigation_helper.dart';
import '../shared_libraries/utils/navigation/router/app_routes.dart';
import '../shared_libraries/utils/resources/colors.gen.dart';
import '../shared_libraries/utils/setup/app_setup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: '{{appName}}',
          debugShowCheckedModeBanner: Config.isDebug,
          theme: ThemeData(
            scaffoldBackgroundColor: ColorName.white,
          ),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            );
          },
          home: const {{name.pascalCase()}}Screen(),
          navigatorKey: NavigationHelperImpl.navigatorKey,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case AppRoutes.home:
                return PageTransition(
                  child: const {{name.pascalCase()}}Screen(),
                  type: PageTransitionType.rightToLeft,
                );
              default:
                return PageTransition(
                  child: const {{name.pascalCase()}}Screen(),
                  type: PageTransitionType.rightToLeft,
                );
            }
          },
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(context, child, details) {
    return child;
  }
}
