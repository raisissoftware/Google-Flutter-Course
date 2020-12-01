import 'dart:convert';

import 'package:http/http.dart';

// void main() {
//   get('https://yts.mx/api/v2/list_movies.json').then((Response response) {
//     Map<String, dynamic> map = jsonDecode(response.body);
//
//     print(map["data"]["movies"][0]["title"]);
//   });
// }

Future<void> main() async {
  final Response response = await get('https://yts.mx/api/v2/list_movies.json');

  final Map<String, dynamic> map = jsonDecode(response.body);

  print(map['data']['movies'][0]['title']);
}
