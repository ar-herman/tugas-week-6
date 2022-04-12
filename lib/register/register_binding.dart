import 'package:get/get.dart';
import 'package:task_enam/register/register_controller.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Registercontroller());
  }
}
