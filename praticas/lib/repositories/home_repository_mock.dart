import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:praticas/models/post_model.dart';
import 'package:praticas/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeReposiroty {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
