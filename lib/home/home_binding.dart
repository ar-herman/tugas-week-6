import 'package:get/get.dart';
import 'package:task_enam/home/home_controller.dart';
import 'package:task_enam/repo/repository.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homecontroller());
    Get.lazyPut(() => NewRepository());
  }
}
