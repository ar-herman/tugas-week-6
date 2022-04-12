import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:task_enam/splash/splash_controller.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  late SplashControler controller;

  Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller = Get.find<SplashControler>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/lottie/lottie_splash.json"),
            const SizedBox(height: 20),
            const Text(
              "Tugas ENAM",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "GrapeNuts"),
            ),
          ],
        ),
      ),
    );
  }
}
