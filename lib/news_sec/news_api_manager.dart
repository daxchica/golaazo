import 'dart:convert';
import 'package:http/http.dart' as http;
import 'news_model.dart';

class ApiNewsManager {
  Future<News> getNews() async {
    // ignore: prefer_typing_uninitialized_variables
    var news;

    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=593dc8c41c924297a4b3d06a7fc8c3ca'));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      news = News.fromJson(jsonData);
      return news;
    }
    throw ('failed');
  }
}
