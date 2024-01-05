import 'package:bhagavadgeeta_api/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/api_helper.dart';

class Chapterprovider with ChangeNotifier{

  List<ChapterModel?> chapterList = [];
  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    List<ChapterModel>? home = await apiHelper.geetaApi();
    chapterList = home!;
    notifyListeners();
  }

}