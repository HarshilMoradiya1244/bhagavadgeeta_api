import 'dart:convert';
import 'package:bhagavadgeeta_api/screen/home/model/home_model.dart';
import 'package:bhagavadgeeta_api/screen/verse/model/verse_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List<ChapterModel>?> geetaApi() async {
    String apiLink = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";

    var response = await http.get(Uri.parse(apiLink), headers: {
      'X-RapidAPI-Key': '37167ab8a3mshe764f8eed547441p1a600cjsne4662516c51e',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List homeData = jsonDecode(utf8.decode(response.bodyBytes));
      List<ChapterModel> dataList =
      homeData.map((e) => ChapterModel.mapToModel(e)).toList();
      return dataList;
    }
    return null;
  }
  Future<SlugModel?> verseApi() async {
    String apiLink = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/1/verses/1/";

    var response = await http.get(Uri.parse(apiLink), headers: {
      'X-RapidAPI-Key': '37167ab8a3mshe764f8eed547441p1a600cjsne4662516c51e',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      var jsontostring = jsonDecode(utf8.decode(response.bodyBytes));
      SlugModel data = SlugModel.mapToModel(jsontostring);
      return data;
    }
    return null;
  }
}
