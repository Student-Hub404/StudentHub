class CompetitionsModel {
  CompetitionsModel({
    required this.data,
  });
  late final List<Competitions> data;

  CompetitionsModel.fromJson(Map<String, dynamic> json) {
    data =
        List.from(json['data']).map((e) => Competitions.fromJson(e)).toList();
  }
}

class Competitions {
  Competitions({
    required this.id,
    required this.description,
    required this.image,
    required this.createdAt,
  });
  late final String id;
  late final String description;
  late final String image;
  late final String createdAt;

  Competitions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
  }
}
