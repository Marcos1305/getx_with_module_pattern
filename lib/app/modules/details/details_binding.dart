import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teste_getx/app/data/provider/api.dart';
import 'package:teste_getx/app/data/repository/posts_repository.dart';
import 'package:teste_getx/app/modules/details/details_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(
        repository: PostsRepository(
          apiClient: MyApiClient(httpClient: http.Client()),
        ),
      ),
    );
  }
}
