import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_getx/app/data/repository/posts_repository.dart';

class DetailsController extends GetxController {
  final PostsRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

  editar(post) {
    print('editar');
  }

  //pratique
  delete(id) {
    print('deletar');
  }
}
