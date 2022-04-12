import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_enam/repo/repository.dart';
import '../models/models.dart';

class Homecontroller extends GetxController {
  RxString email = "".obs;
  RxString name = "".obs;

  //mengambil data dari get storage
  void getDataFromSession() {
    Map<String, dynamic> users = GetStorage().read("user");
    email.value = users["email"];
    name.value = users["name"];
  }

  //api
  NewRepository newRepository = Get.find<NewRepository>();

  List listNews = <NewsModel>[].obs;

  void callApi() {
    newRepository.getNews().then((List<NewsModel> value) {
      listNews.addAll(value);
    }).catchError((error, stackTrace) {
      // ignore: avoid_print
      print(error);
      // ignore: avoid_print
      print(stackTrace);
    });
  }

  //menghapus history atau sesion
  void deleteSession() {
    GetStorage().remove("user").then((value) {
      Get.offAllNamed("/splash");
    });
  }

  @override
  void onReady() {
    callApi();
    getDataFromSession();

    super.onReady();
  }
}
