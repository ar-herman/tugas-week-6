import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_enam/home/home_binding.dart';
import 'package:task_enam/login/login_bindings.dart';
import 'package:task_enam/login/login_screen.dart';
import 'package:task_enam/register/register_binding.dart';
import 'package:task_enam/splash/splash_bindings.dart';
import 'package:task_enam/splash/splash_screen.dart';

import 'home/home_screen.dart';
import 'register/register_screen.dart';

void main() async {
  //inisiati getstorage
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/register",
      getPages: [
        GetPage(
            name: "/register",
            page: () => RegisterScreen(),
            binding: RegisterBindings()),
        GetPage(name: "/home", page: () => Home(), binding: HomeBindings()),
        GetPage(
            name: "/splash", page: () => Splash(), binding: SplashBinding()),
        GetPage(
            name: "/login",
            page: () => LoginScreen(),
            binding: LoginBindings()),
      ],
    );
  }
}
