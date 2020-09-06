import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:teste_getx/app/data/model/model.dart';
import 'package:teste_getx/app/data/repository/posts_repository.dart';

class HomeController extends GetxController {
  final PostsRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  //use o snippet getfinal para criar está variável
  final _postList = List<MyModel>().obs;
  List<MyModel> get postList => this._postList.value;
  set postList(value) => this._postList.value = value;

  ///função para recuperar todos os posts
  getAll() {
    repository.getAll().then((data) {
      this.postList = data;
    });
  }
}
