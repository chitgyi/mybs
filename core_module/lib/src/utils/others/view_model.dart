import 'package:get/get_state_manager/get_state_manager.dart';

abstract class ViewModel extends GetxController {
  void notify() {
    update();
  }
}
