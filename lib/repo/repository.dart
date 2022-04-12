import 'dart:convert';

import '../models/models.dart';
import 'package:http/http.dart' as http;
import '../server/server.dart';

class NewRepository {
  Future<List<NewsModel>> getNews() async {
    // http.Response value = await http.get(Uri.parse(Server.alamatApi +
    //     "top-headlines?sources=$Server.source&apiKey=$Server.apikey"));

    http.Response value =
        await http.get(Uri.parse(Server.alamatApi + Server.apikey));

    if (value.statusCode == 200) {
      Map<String, dynamic> response = json.decode(value.body);

      List<dynamic> listDataNews = response["articles"];

      List<NewsModel> listNews = listDataNews
          .map((dynamic element) => NewsModel.fromMap(element))
          .toList();
      return listNews;
    } else {
      throw Exception("Data Tidak Ada");
    }
  }
}
