import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_enam/login/login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  late LoginControler controler;

  @override
  Widget build(BuildContext context) {
    controler = Get.find<LoginControler>();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 100,
        ),
        child: Form(
          key: controler.keyForm,
          child: Center(
            child: ListView(
              children: [
                const Text(
                  "Masuk Akun",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Righteous",
                    letterSpacing: 5,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: controler.nameControler,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Name disi";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text("Name"),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  controller: controler.passControler,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Password disi";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    controler.loginData();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontFamily: "Righteous",
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
