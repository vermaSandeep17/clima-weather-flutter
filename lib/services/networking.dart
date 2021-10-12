import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    String requestUrl = url;
    http.Response response = await http.get(Uri.parse(requestUrl));

    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}
