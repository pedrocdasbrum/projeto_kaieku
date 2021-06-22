class User {
  int? idUser;
  String? name;
  String? email;
  String? password;

  User({
    this.idUser,
    this.name,
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'idUser': this.idUser,
      'name': this.name,
      'email': this.email,
      'password': this.password,
    };
  }

  static User toObjetic(Map<String, dynamic> data) {
    return User(
      idUser: data["idUser"],
      name: data["name"],
      email: data["email"],
      password: data["password"],
    );
  }
}
