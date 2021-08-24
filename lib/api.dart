import "dart:convert";

import "package:http/http.dart" as http;

class callapi {
  final String _url = "http://localhost:8000/api/v1/";
  postdata(data, url) async {
    var fullurl = _url + url;
    var response = await http.post(Uri.parse(fullurl),
        body: jsonEncode(data), headers: _setheaders());
    return response;
  }

  _setheaders() =>
      {"Content-type": "application/json", "Accept": "application/json"};
}
