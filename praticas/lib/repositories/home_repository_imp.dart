import 'package:dio/dio.dart';
import 'package:praticas/models/post_model.dart';
import 'package:praticas/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeReposiroty {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response = await Dio().get('http://www.google.com');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
