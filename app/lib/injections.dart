import 'package:core_module/core_module.dart';
import 'package:db_module/db_module.dart';

class InitialInjections implements Bindings {
  @override
  void dependencies() {
    final dbModule = DatabaseModule();
    Get.create<IStopDao>(() => dbModule.stopDao);
  }
}
