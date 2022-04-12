import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_enam/register/register_controller.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  late Registercontroller controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.find<Registercontroller>();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 100,
        ),
        child: Form(
          key: controller.keyForm,
          child: Center(
            child: ListView(
              children: [
                const Text(
                  "Daftar Akun",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Righteous",
                    letterSpacing: 5,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (String? validator) {
                    if (validator!.isEmpty) {
                      return "Name cannot be nulled";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    controller.name = value!;
                  },
                  decoration: const InputDecoration(
                    label: Text("Name"),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (String? validator) {
                    if (validator!.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    controller.email = value!;
                  },
                  decoration: const InputDecoration(
                    label: Text(
                      "Email",
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  validator: (String? validator) {
                    if (validator!.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    controller.password = value!;
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
                    controller.saveSession();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Simpan",
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
