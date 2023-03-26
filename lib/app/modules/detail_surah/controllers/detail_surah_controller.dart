import 'dart:convert';

import 'package:al_quran/app/data/models/surah_model.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class DetailSurahController extends GetxController {
  Future<Surah> getDetailSurah(String surahId) async {
    Uri url = Uri.parse('https://api.quran.gading.dev/surah/${surahId}');

    var res = await http.get(url);

    Map<String, dynamic> detailMap =
        (json.decode(res.body) as Map<String, dynamic>)['data'];

    Surah details = Surah.fromJson(detailMap);

    return details;
  }
}
