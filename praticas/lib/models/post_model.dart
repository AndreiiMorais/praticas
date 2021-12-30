class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.title, this.body);

  factory PostModel.fromJson(Map json) {
    //assim se cria um objeto do tipo PostModel vindo de um mapa
    return PostModel(json['userId'], json['id'], json['title'], json['body']);
  }

  @override
  String toString() => 'id: $id';
}
