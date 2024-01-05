import 'dart:convert';
import 'package:bhagavadgeeta_api/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<List<ChapterModel>?> geetaApi() async {
    String apiLink = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";

    var response = await http.get(Uri.parse(apiLink), headers: {
      'X-RapidAPI-Key': '37167ab8a3mshe764f8eed547441p1a600cjsne4662516c51e',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
    });

    if (response.statusCode == 200) {
      List homeData = jsonDecode(response.body);
      List<ChapterModel> dataList =
      homeData.map((e) => ChapterModel.mapToModel(e)).toList();
      return dataList;
    }
    return null;
  }
}
