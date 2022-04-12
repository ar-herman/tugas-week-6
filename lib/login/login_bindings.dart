import 'package:get/get.dart';
import 'package:task_enam/login/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControler());
  }
}
