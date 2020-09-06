import 'package:meta/meta.dart';
import 'package:teste_getx/app/data/provider/api.dart';

class PostsRepository {
  final MyApiClient apiClient;

  PostsRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }
}
