import 'package:al_quran/app/constants/color_schemes.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(
          // appBarTheme: AppBarTheme(backgroundColor: lightColorScheme.primary),
          // scaffoldBackgroundColor: lightColorScheme.primary,
          useMaterial3: true,
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      initialRoute: Routes.INTRODUCTION,
      getPages: AppPages.routes,
    ),
  );
}
