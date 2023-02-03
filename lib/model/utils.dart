import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islami/model/ResponsRadio.dart';

///https://mp3quran.net/api/v3/radios
class ApiManger {
  static const String baseUrl = 'mp3quran.net';

  static Future<ResponsRadio> getData() async {
    var uri = Uri.parse('https://mp3quran.net/api/v3/radios');

    var response = await http.get(uri);
    var bodyString = response.body;
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return ResponsRadio.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load radios');
    }
  }
}
