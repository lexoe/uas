import 'dart:convert';

import 'package:crud/model.dart';
import 'package:http/http.dart' as http;

class Repository{
  final _baseUrl = 'http://192.168.117.50:8000/api/posts';

  Future getData() async{
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        var it = jsonDecode(response.body);
        List<Dosen> dosen = it.map((e) => Dosen.fromJson(e)).toList();
        return dosen;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}