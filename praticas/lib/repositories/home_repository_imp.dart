import 'package:dio/dio.dart';
import 'package:praticas/models/post_model.dart';
import 'package:praticas/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeReposiroty {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
