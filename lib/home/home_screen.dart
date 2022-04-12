import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task_enam/home/home_controller.dart';
import 'package:task_enam/widgets/drawer.dart';

import '../widgets/news_view.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  late Homecontroller controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.find<Homecontroller>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Tugas Enam"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.deleteSession();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listNews.length,
          itemBuilder: (context, index) {
            return NewsVies(newsModel: controller.listNews[index]);
          },
        ),
      ),
      drawer: DrawerWidgets(),
    );
  }
}
