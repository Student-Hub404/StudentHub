class PostsModel {
  PostsModel({
    required this.data,
  });
  late final List<Posts> data;

  PostsModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Posts.fromJson(e)).toList();
  }
}

class Posts {
  Posts({
    required this.description,
    required this.image,
    required this.createdAt,
  });
  late final String description;
  late final String image;
  late final String createdAt;

  Posts.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
  }
}
