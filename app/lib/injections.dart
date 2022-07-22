import 'package:mybs_core_module/mybs_core_module.dart';
import 'package:mybs_db_module/mybs_db_module.dart';

class InitialInjections implements Bindings {
  @override
  void dependencies() {
    final dbModule = DatabaseModule();
    Get.create<IStopDao>(() => dbModule.stopDao);
  }
}
