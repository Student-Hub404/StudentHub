class ComptitionForm {
  ComptitionForm({
    required this.name,
    required this.phone,
    required this.collegeId,
    required this.department,
    required this.level,
    required this.competitionId,
    required this.id,
    required this.updatedAt,
    required this.createdAt,
  });
  late final String name;
  late final String phone;
  late final String collegeId;
  late final String department;
  late final String level;
  late final String competitionId;
  late final String id;
  late final String updatedAt;
  late final String createdAt;

  ComptitionForm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    collegeId = json['college_id'];
    department = json['department'];
    level = json['level'];
    competitionId = json['competition_id'];
    id = json['id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }
}
