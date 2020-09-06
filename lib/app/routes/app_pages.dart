import 'package:get/get.dart';
import 'package:teste_getx/app/modules/details/details_binding.dart';
import 'package:teste_getx/app/modules/details/details_page.dart';
import 'package:teste_getx/app/modules/home/home_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}
