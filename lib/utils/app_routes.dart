import 'package:bhagavadgeeta_api/screen/home/view/chapter_screen.dart';
import 'package:bhagavadgeeta_api/screen/verse/view/slok_screen.dart';
import 'package:bhagavadgeeta_api/screen/verse/view/verse_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder> screen_routes = {
  '/':(context) => const ChapterScreen(),
  'verse':(context) => const VerseScreen(),
  'slug':(context) => const ShlokcScreen(),
};