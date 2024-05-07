class UserModel {
  UserModel({
    required this.user,
    required this.token,
  });
  late final User user;
  late final String token;

  UserModel.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json['user']);
    token = json['token'];
  }
}

class User {
  User({
    required this.name,
    required this.email,
  });
  late final String name;
  late final String email;

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }
}
