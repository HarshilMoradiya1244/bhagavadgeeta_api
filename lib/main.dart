import 'package:bhagavadgeeta_api/screen/home/provider/home_provider.dart';
import 'package:bhagavadgeeta_api/utils/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Chapterprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: screen_routes,
      ),
    ),
  );
}
