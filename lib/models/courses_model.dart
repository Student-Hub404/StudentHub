class CoursesModel {
  CoursesModel({
    required this.data,
  });
  late final List<Courses> data;

  CoursesModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Courses.fromJson(e)).toList();
  }
}

class Courses {
  Courses({
    required this.name,
    required this.description,
    required this.instructor,
    required this.link,
  });
  late final String name;
  late final String description;
  late final String instructor;
  late final String link;

  Courses.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    instructor = json['instructor'];
    link = json['link'];
  }
}
