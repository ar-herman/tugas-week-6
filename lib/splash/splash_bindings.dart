import 'package:get/get.dart';
import 'package:task_enam/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashControler());
  }
}
