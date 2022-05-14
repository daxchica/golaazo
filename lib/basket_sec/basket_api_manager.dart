import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart';
import 'basket_model.dart';

class BasketApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";
  // ignore: constant_identifier_names
  static const api_Key = "ba12dd9781a8fa0040d2c45254178c77";

  static const headers = {
    'x-rapidapi-key': "ba12dd9781a8fa0040d2c45254178c77",
    'x-rapidapi-host': "v3.football.api-sports.io"
  };

  Future<List<BasketMatch>> getAllMatches() async {
    Response res = await http.get(Uri.parse(apiUrl), headers: headers);
    // ignore: prefer_typing_uninitialized_variables
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      // print("Api service: $body");
      List<BasketMatch> matches = matchesList
          .map((dynamic item) => BasketMatch.fromJson(item))
          .toList();
      return matches;
    }
    throw ('failed');
  }
}
