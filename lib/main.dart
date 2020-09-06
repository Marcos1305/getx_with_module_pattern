import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_getx/app/modules/home/home_binding.dart';
import 'package:teste_getx/app/modules/home/home_page.dart';
import 'package:teste_getx/app/routes/app_pages.dart';
import 'package:teste_getx/app/theme/app_theme.dart';
import 'package:teste_getx/app/translations/app_translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      initialBinding: HomeBinding(),
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: HomePage(),
      locale: Locale('pt', 'BR'),
      translationsKeys: AppTranslation.translations,
    );
  }
}
