import 'package:flutter/cupertino.dart';
import 'package:praticas/models/post_model.dart';
import 'package:praticas/repositories/home_repository.dart';

class HomeController {
  final HomeReposiroty _homeReposiroty;
  HomeController(this._homeReposiroty);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeReposiroty.getList();
  }
}
