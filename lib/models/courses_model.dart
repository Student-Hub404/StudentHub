class CoursesModel {
  CoursesModel({
    required this.data,
  });
  late final List<Data> data;

  CoursesModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  Data({
    required this.name,
    required this.description,
    required this.instructor,
    required this.link,
  });
  late final String name;
  late final String description;
  late final String instructor;
  late final String link;

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    instructor = json['instructor'];
    link = json['link'];
  }
}
