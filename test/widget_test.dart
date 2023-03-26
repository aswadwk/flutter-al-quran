import 'dart:convert';

import 'package:al_quran/app/data/models/surah_model.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse('https://api.quran.gading.dev/surah');

  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  Surah alfatiha = Surah.fromJson(data[1]);

  Uri urlAlfatiha =
      Uri.parse('https://api.quran.gading.dev/surah/${alfatiha.number}');

  var detail = await http.get(urlAlfatiha);

  Map<String, dynamic> detailMap =
      (json.decode(detail.body) as Map<String, dynamic>)['data'];
  // print(detail.body);

  Surah details = Surah.fromJson(detailMap);

  print(details);
}
