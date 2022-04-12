import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_controller.dart';

// ignore: must_be_immutable
class DrawerWidgets extends StatelessWidget {
  DrawerWidgets({Key? key}) : super(key: key);
  late Homecontroller controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.find<Homecontroller>();
    return Drawer(
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("photo"),
              ),
              accountName: Obx(() => Text(
                    controller.name.value,
                    style: const TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  )),
              accountEmail: Text(
                controller.email.value,
                style: const TextStyle(
                  fontSize: 24,
                  letterSpacing: 2,
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.yellow,
            ),
            const ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.yellow,
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
