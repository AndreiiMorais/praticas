import 'package:praticas/models/post_model.dart';

abstract class HomeReposiroty {
  Future<List<PostModel>> getList();
}
