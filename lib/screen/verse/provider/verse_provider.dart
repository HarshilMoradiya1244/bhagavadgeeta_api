import 'package:bhagavadgeeta_api/screen/verse/model/verse_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/api_helper.dart';

class VerseProvider with ChangeNotifier {
  SlugModel? slugModel;

  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    SlugModel? user = await apiHelper.verseApi();
    slugModel = user;
    notifyListeners();
  }
}
