import 'package:flutter/material.dart';
import '../di/injections.dart';
import '../app/main_app.dart';
import '../shared_libraries/utils/setup/app_setup.dart';

void main() async {
  Config.appFlavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  await Injections().initialize();
  runApp(const MyApp());
}


