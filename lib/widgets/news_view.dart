import 'package:flutter/material.dart';

import '../models/models.dart';

// ignore: must_be_immutable
class NewsVies extends StatelessWidget {
  NewsVies({Key? key, required this.newsModel}) : super(key: key);

  late NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Text(
              "Penulis : ${newsModel.author}",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Image.network(
            newsModel.urlToImage,
          ),
          const SizedBox(height: 5),
          Text(
            newsModel.description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
