import 'package:get_it/get_it.dart';

import '../shared_libraries/core/di/core_module.dart';
import '../shared_libraries/utils/di/utils_module.dart';

final sl = GetIt.instance;

class Injections {
  Future<void> initialize() async {
    await _registerCore();
    _registerDomains();
  }

  void _registerSharedLibraries() {
    RegisterCoreModule();
    RegisterUtilsModule();
  }

  void _registerDomains() {}
}
